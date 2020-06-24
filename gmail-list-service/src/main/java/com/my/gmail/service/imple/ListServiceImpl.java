package com.my.gmail.service.imple;

import com.alibaba.dubbo.config.annotation.Service;
import com.my.gmail.bean.SkuLsInfo;
import com.my.gmail.bean.SkuLsParams;
import com.my.gmail.bean.SkuLsResult;
import com.my.gmail.config.RedisUtil;
import com.my.gmail.service.ListService;
import io.searchbox.client.JestClient;
import io.searchbox.core.Index;
import io.searchbox.core.Search;
import io.searchbox.core.SearchResult;
import io.searchbox.core.Update;
import io.searchbox.core.search.aggregation.MetricAggregation;
import io.searchbox.core.search.aggregation.TermsAggregation;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.TermQueryBuilder;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.aggregations.bucket.terms.TermsBuilder;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.highlight.HighlightBuilder;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class ListServiceImpl implements ListService {

    @Autowired
    private JestClient jestClient;


    /*数据库名*/
    private static final String ES_INDEX="gmall";

    /*表名*/
    private static final String ES_TYPE="SkuInfo";

    @Autowired
    private RedisUtil redisUtil;

    @Override
    public void saveSkuListInfo(SkuLsInfo skuLsInfo) {

        /*
            1.定义动作
            2.执行动作
         */
        Index index = new Index.Builder(skuLsInfo).index(ES_INDEX).type(ES_TYPE).id(skuLsInfo.getId()).build();

        try {
            jestClient.execute(index);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public SkuLsResult search(SkuLsParams skuLsParams) {
        /*
            1.定义dsl语句
            2.定义动作
            3.执行动作
            4.返回结果集
         */
        String query = makeQueryStringForSearch(skuLsParams);

        Search search = new Search.Builder(query).addIndex(ES_INDEX).addType(ES_TYPE).build();
        SearchResult searchResult=null;
        try {
            searchResult = jestClient.execute(search);
        } catch (IOException e) {
            e.printStackTrace();
        }
        SkuLsResult skuLsResult=makeResultForSearch(searchResult,skuLsParams);
        return skuLsResult;
    }

    @Override
    public void incrHotScore(String skuId) {
        //获取jedis
        Jedis jedis = redisUtil.getJedis();

        //定义key
        String hotKey = "hotScore";
        Double count = jedis.zincrby(hotKey, 1, "skuId:" + skuId);
        //按照一定的规则来更新es
        if (count % 10 == 0) {
            //则更新一次
            //es更新语句
            updatehotScore(skuId, Math.round(count));
        }

    }

    /**
     * 更新hotScore
     * @param skuId
     * @param hotScore
     */
    private void updatehotScore(String skuId, long hotScore) {
        /*
            1.编写dsl语句
            2.定义动作
            3.执行语句
         */
        String upd = "{\n" +
                "  \"doc\": {\n" +
                "    \"hotScore\":" + hotScore + "\n" +
                "  }\n" +
                "}";
        Update build = new Update.Builder(upd).index(ES_INDEX).type(ES_TYPE).id(skuId).build();
        try {
            jestClient.execute(build);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //设置返回结果

    /**
     *
     * @param searchResult 通过dsl语句查询出来的结果
     * @param skuLsParams
     * @return
     */
    private SkuLsResult makeResultForSearch(SearchResult searchResult, SkuLsParams skuLsParams) {
        SkuLsResult skuLsResult = new SkuLsResult();
        ArrayList<SkuLsInfo> skuLsInfoArrayList = new ArrayList<>();
        /*给集合复制*/
        List<SearchResult.Hit<SkuLsInfo, Void>> hits = searchResult.getHits(SkuLsInfo.class);
        /*循环遍历*/
        for(SearchResult.Hit<SkuLsInfo, Void> hit : hits){
            SkuLsInfo skuLsInfo = hit.source;
            /*获取高亮*/
            Map<String, List<String>> highlight = hit.highlight;
            if(highlight != null && highlight.size()>0){
                List<String> list = highlight.get("skuName");
                String heightHI = list.get(0);
                skuLsInfo.setSkuName(heightHI);
            }
            skuLsInfoArrayList.add(skuLsInfo);
        }
        skuLsResult.setSkuLsInfoList(skuLsInfoArrayList);
//        long total;
        skuLsResult.setTotal(searchResult.getTotal());
//        long totalPages;
        //计算总页数
//        long totalPages = searchResult.getTotal() % skuLsParams.getPageSize() == 0 ? searchResult.getTotal() / skuLsParams.getPageSize() : searchResult.getTotal() / skuLsParams.getPageSize() + 1;
        long totalPages = (searchResult.getTotal() + skuLsParams.getPageSize() - 1) / skuLsParams.getPageSize();
        skuLsResult.setTotalPages(totalPages);
//        /*平台属性ID集合*/
//        List<String> attrValueIdList;
        ArrayList<String> skuLsInfoValueId = new ArrayList<>();
        MetricAggregation aggregations = searchResult.getAggregations();
        TermsAggregation groupby_attr = aggregations.getTermsAggregation("groupby");
        List<TermsAggregation.Entry> buckets = groupby_attr.getBuckets();
        for (TermsAggregation.Entry bucket : buckets) {
            String valueId = bucket.getKey();
            skuLsInfoValueId.add(valueId);
        }
        skuLsResult.setAttrValueIdList(skuLsInfoValueId);
        return skuLsResult;
    }
    
    //完全手写的dsl语句
    private String makeQueryStringForSearch(SkuLsParams skuLsParams) {
        //定义一个查询器
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        //创建bool
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();

        //判断 keyword 是否为空
        if (skuLsParams.getKeyword() != null && skuLsParams.getKeyword().length() > 0) {
            //创建match
            MatchQueryBuilder matchQueryBuilder = new MatchQueryBuilder("skuName",skuLsParams.getKeyword());
            //创建一个must
            boolQueryBuilder.must(matchQueryBuilder);
            //设置高亮
            HighlightBuilder highlighter = searchSourceBuilder.highlighter();
            //设置高亮规则
            highlighter.field("skuName");
            highlighter.preTags("<span style=color:red>");
            highlighter.postTags("</span>");
            //将高亮对象放入查询器中
            searchSourceBuilder.highlight(highlighter);

        }
        //判断 平台属性值id
        if (skuLsParams.getValueId() != null && skuLsParams.getValueId().length > 0) {
            //循环
            for (String sku1 : skuLsParams.getValueId()) {
                //创建term
                TermQueryBuilder termQueryBuilder = new TermQueryBuilder("skuAttrValueList.valueId.keyword",sku1);
                //创建一个filter并添加term
                boolQueryBuilder.filter(termQueryBuilder);
            }
        }
        //判断 三级分类id
        if (skuLsParams.getCatalog3Id() != null&&skuLsParams.getCatalog3Id().length()>0) {
            //创建term
            TermQueryBuilder termQueryBuilder = new TermQueryBuilder("catalog3Id",skuLsParams.getCatalog3Id());
            //创建一个filter并添加term
            boolQueryBuilder.filter(termQueryBuilder);
        }

        //query
        searchSourceBuilder.query(boolQueryBuilder);

        //设置分页
        //from从那一页开始查询
        //10条 每页 3 每页0 2
        int from = (skuLsParams.getPageNo() - 1) * skuLsParams.getPageSize();
        searchSourceBuilder.from(from);
        //每页显示的条数
        searchSourceBuilder.size(skuLsParams.getPageSize());

        //设置排序
        searchSourceBuilder.sort("hotScore", SortOrder.DESC);

        //聚合
        //创建一个对象 aggs:-term
        TermsBuilder groupby_attr = AggregationBuilders.terms("groupby");
        groupby_attr.field("skuAttrValueList.valueId.keyword");
        //aggs放入查询器
        searchSourceBuilder.aggregation(groupby_attr);
        String query = searchSourceBuilder.toString();
        System.out.println("query:"+query);
        return query;
    }
}
