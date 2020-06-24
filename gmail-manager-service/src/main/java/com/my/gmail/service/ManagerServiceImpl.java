package com.my.gmail.service;

import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.*;
import com.my.gmail.config.RedisUtil;
import com.my.gmail.constant.ManageConst;
import com.my.gmail.mapper.*;
import org.apache.commons.lang3.StringUtils;
import org.redisson.Redisson;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import redis.clients.jedis.Jedis;

import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
public class ManagerServiceImpl implements ManagerService {

    //调用mapper
    @Autowired
    private BaseCatalog1Mapper baseCatalog1Mapper;

    @Autowired
    private BaseCatalog2Mapper baseCatalog2Mapper;

    @Autowired
    private BaseCatalog3Mapper baseCatalog3Mapper;

    @Autowired
    private BaseAttrInfoMapper baseAttrInfoMapper;

    @Autowired
    private BaseAttrValueMapper baseAttrValueMapper;

    @Autowired
    private SpuInfoMapper spuInfoMapper;

    @Autowired
    private BaseSaleAttrMapper baseSaleAttrMapper;

    @Autowired
    private SpuImageMapper spuImageMapper;

    @Autowired
    private SpuSaleAttrMapper spuSaleAttrMapper;

    @Autowired
    private SpuSaleAttrValueMapper spuSaleAttrValueMapper;

    @Autowired
    private SkuInfoMapper skuInfoMapper;

    @Autowired
    private SkuImageMapper skuImageMapper;

    @Autowired
    private SkuAttrValueMapper skuAttrValueMapper;

    @Autowired
    private SkuSaleAttrValueMapper skuSaleAttrValueMapper;

    @Autowired
    private RedisUtil redisUtil;

    @Override
    public List<BaseCatalog1> getCatalog1() {
        return baseCatalog1Mapper.selectAll();
    }

    @Override
    public List<BaseCatalog2> getCatalog2(String catalog1Id) {
        //select * from BaseCatalog2 where catalog1Id=?
        BaseCatalog2 baseCatalog2 = new BaseCatalog2();
        baseCatalog2.setCatalog1Id(catalog1Id);
        return baseCatalog2Mapper.select(baseCatalog2);
    }

    @Override
    public List<BaseCatalog3> getCatalog3(String catalog2Id) {
        BaseCatalog3 baseCatalog3 = new BaseCatalog3();
        baseCatalog3.setCatalog2Id(catalog2Id);
        return baseCatalog3Mapper.select(baseCatalog3);
    }

    @Override
    public List<BaseAttrInfo> getAttrList(String catalog3Id) {
        //select * from baseAttrInfo where catalog3Id=?
//        BaseAttrInfo baseAttrInfo = new BaseAttrInfo();
//        baseAttrInfo.setCatalog3Id(catalog3Id);
//        return baseAttrInfoMapper.select(baseAttrInfo);
        return baseAttrInfoMapper.getBaseAttrInfoListByCatalog3Id(catalog3Id);
    }

    @Override
    @Transactional
    public void saveAttrInfo(BaseAttrInfo baseAttrInfo) {
        //修改数据操作
        if (baseAttrInfo.getId()!=null||baseAttrInfo.getId().length()>0) {
            baseAttrInfoMapper.updateByPrimaryKeySelective(baseAttrInfo);
        } else {
            //保存数据到baseAttrInfo
            baseAttrInfoMapper.insertSelective(baseAttrInfo);
        }
        //baseAttrValue ? 先清空数据 在插入数据
        //清空数据逇条件，根据attrId为依据
        //delete from baseAttrValue where attrId=?
        BaseAttrValue baseAttrValueDel = new BaseAttrValue();
        baseAttrValueDel.setAttrId(baseAttrInfo.getId());
        baseAttrValueMapper.delete(baseAttrValueDel);
        //保存数据到baseAttrValue
        List<BaseAttrValue> attrValueList = baseAttrInfo.getAttrValueList();
        if (attrValueList != null && attrValueList.size() > 0) {
            for (BaseAttrValue baseAttrValue : attrValueList) {
//                private String id;
//                private String valueName; 前端页面传递
//                private String attrId;    attrId=baseAttrInfo.getId()
                //前提条件 把seAttrInfo 对象中的主键必须可以获取到自增值
//                baseAttrValue.setId("123");测试事务
                baseAttrValue.setAttrId(baseAttrInfo.getId());
                baseAttrValueMapper.insertSelective(baseAttrValue);
            }
        }
    }

    @Override
    public List<BaseAttrValue> getAttrValueList(String attrId) {
        BaseAttrValue baseAttrValue = new BaseAttrValue();
        baseAttrValue.setAttrId(attrId);
        List<BaseAttrValue> baseAttrValueList = baseAttrValueMapper.select(baseAttrValue);
        return baseAttrValueList;
    }

    @Override
    public BaseAttrInfo getAttrInfo(String attrId) {
        //baseAttrInfo.id 等于 attrId,这里返回的baseAttrInfo中的平台属性值集合为空，因为baseAttrInfo中没有value的属性
        BaseAttrInfo baseAttrInfo = baseAttrInfoMapper.selectByPrimaryKey(attrId);
        //需要将平台属性值集合放入到平台属性中
        //select * from baseAttrValue where attrId=?
        BaseAttrValue baseAttrValue = new BaseAttrValue();
        baseAttrValue.setAttrId(attrId);
        List<BaseAttrValue> baseAttrValueList = baseAttrValueMapper.select(baseAttrValue);
        baseAttrInfo.setAttrValueList(baseAttrValueList);
        return baseAttrInfo;
    }

    @Override
    public List<SpuInfo> getSpuList(SpuInfo spuInfo) {
        List<SpuInfo> spuInfoList = spuInfoMapper.select(spuInfo);
        return spuInfoList;
    }

    @Override
    public List<BaseSaleAttr> getBaseSaleAttrList() {
        return baseSaleAttrMapper.selectAll();
    }

    @Override
    @Transactional
    public void saveSpuInfo(SpuInfo spuInfo) {
        //保存数据
//        spuInfo
//        spuImage
//        spuSaleAttr
//        spuSaleAttrValue
        spuInfoMapper.insertSelective(spuInfo);
        List<SpuImage> spuImageList = spuInfo.getSpuImageList();
        if (spuImageList != null && spuImageList.size() > 0) {
            for (SpuImage spuImage : spuImageList) {
                //设置spuId
                spuImage.setSpuId(spuInfo.getId());
                spuImageMapper.insertSelective(spuImage);
            }
        }
        List<SpuSaleAttr> spuSaleAttrList = spuInfo.getSpuSaleAttrList();
        if (spuSaleAttrList != null && spuSaleAttrList.size() > 0) {
            for (SpuSaleAttr spuSaleAttr : spuSaleAttrList) {
                spuSaleAttr.setSpuId(spuInfo.getId());
                spuSaleAttrMapper.insertSelective(spuSaleAttr);
                List<SpuSaleAttrValue> spuSaleAttrValueList = spuSaleAttr.getSpuSaleAttrValueList();
                if (spuSaleAttrValueList != null && spuSaleAttrValueList.size() > 0) {
                    for (SpuSaleAttrValue spuSaleAttrValue : spuSaleAttrValueList) {
                        spuSaleAttrValue.setSpuId(spuInfo.getId());
                        spuSaleAttrValueMapper.insertSelective(spuSaleAttrValue);
                    }
                }
            }
        }
    }

    @Override
    public List<SpuImage> getsSuImageList(SpuImage spuImage) {
        //select * from spuImage where spuId=?
        List<SpuImage> spuImageList = spuImageMapper.select(spuImage);
        return spuImageList;
    }

    @Override
    public List<SpuSaleAttr> getSpuSaleAttrList(String spuId) {
        //调用mapper
        //涉及多表关联查询
        List<SpuSaleAttr> spuSaleAttrList = spuSaleAttrMapper.selectSpuSaleAttrList(spuId);
        return spuSaleAttrList;
    }

    @Override
    @Transactional
    public void saveSkuInfo(SkuInfo skuInfo) {
//        skuInfo
        skuInfoMapper.insertSelective(skuInfo);
//        SkuImage
        List<SkuImage> skuImageList = skuInfo.getSkuImageList();
        if (skuImageList != null && skuImageList.size() > 0) {
            for (SkuImage skuImage : skuImageList) {
                //skuImage.skuId=skuInfo.getId
                skuImage.setSkuId(skuInfo.getId());
                skuImageMapper.insertSelective(skuImage);
            }
        }
//        SkuAttrValue
        List<SkuAttrValue> skuAttrValueList = skuInfo.getSkuAttrValueList();
        if (skuAttrValueList != null && skuAttrValueList.size() > 0) {
            for (SkuAttrValue skuAttrValue : skuAttrValueList) {
                skuAttrValue.setSkuId(skuInfo.getId());
                skuAttrValueMapper.insertSelective(skuAttrValue);
            }
        }
//        SkuSaleAttrValue
        List<SkuSaleAttrValue> skuSaleAttrValueList = skuInfo.getSkuSaleAttrValueList();
        if (skuSaleAttrValueList != null && skuSaleAttrValueList.size() > 0) {
            for (SkuSaleAttrValue skuSaleAttrValue : skuSaleAttrValueList) {
                skuSaleAttrValue.setSkuId(skuInfo.getId());
                skuSaleAttrValueMapper.insertSelective(skuSaleAttrValue);
            }
        }
    }

    @Override
    public SkuInfo getSkuInfo(String skuId) {
//        Jedis jedis = redisUtil.getJedis();
//        jedis.set("ok", "没毛病");
//        jedis.close();

        return getSkuInfoRedisson(skuId);
//        return getSkuInfoJedis(skuId);
    }

    private SkuInfo getSkuInfoRedisson(String skuId) {
        //放入业务逻辑代码
        Jedis jedis = null;
        SkuInfo skuInfo = null;
        RLock lock = null;
        try {
            Config config = new Config();
            config.useSingleServer().setAddress("redis://192.168.1.229:6379");

            RedissonClient redissonClient = Redisson.create(config);
            //使用redisson 调用getLock
            lock = redissonClient.getLock("myLock");
            //加锁
            lock.lock(10, TimeUnit.SECONDS);
            jedis = redisUtil.getJedis();
            //定义key
            String key = ManageConst.SKUKEY_PREFIX+skuId+ManageConst.SKUKEY_SUFFIX;
            if(jedis.exists(key)){
                String s = jedis.get(key);
                skuInfo = JSON.parseObject(s, SkuInfo.class);
                return skuInfo;
            }else{
                skuInfo = getSkuInfoDB(skuId);
                jedis.setex(key,ManageConst.SKUKEY_TIMEOUT,JSON.toJSONString(skuInfo));
                return skuInfo;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(jedis != null){
                jedis.close();
            }
            //解锁
            if (lock != null) {
                lock.unlock();
            }
        }
        return getSkuInfoDB(skuId);
    }

    private SkuInfo getSkuInfoJedis(String skuId) {
        Jedis jedis = null;
        SkuInfo skuInfo = null;
        try {
            jedis = redisUtil.getJedis();
            //定义key: sku:skuId:info
            String skuKey = ManageConst.SKUKEY_PREFIX +skuId+ ManageConst.SKUKEY_SUFFIX;
            //获取数据
            String skuJson = jedis.get(skuKey);
            if (skuJson==null||skuJson.length()==0){
                //尝试加锁
                System.out.println("缓存中没有数据");
                //执行set命令
                //定义上锁的key sku:skuId:lock
                String skuLockKey = ManageConst.SKUKEY_PREFIX +skuId+ ManageConst.SKULOCK_SUFFIX;
                String lockKey = jedis.set(skuLockKey, "good", "NX", "PX", ManageConst.SKULOCK_EXPIRE_PX);
                if ("OK".equals(lockKey)) {
                    //加锁成功
                    skuInfo = getSkuInfoDB(skuId);
                    //将数据放入缓存
                    //将对象转换为字符串
                    String skuRedisStr = JSON.toJSONString(skuInfo);
                    jedis.setex(skuKey, ManageConst.SKUKEY_TIMEOUT, skuRedisStr);
                    //删除锁
                    jedis.del(skuLockKey);
                    return skuInfo;
                } else {
                    //等待
                    Thread.sleep(1000);
                    //调用getSkuInfo()
                    return getSkuInfoJedis(skuId);
                }
//                jedis.close();
            }else {
                skuInfo = JSON.parseObject(skuJson, SkuInfo.class);
                //放入 redis 并设置过期时间
                return skuInfo;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return getSkuInfoDB(skuId);
    }

    //ctrl+alt+m
    private SkuInfo getSkuInfoDB(String skuId) {
        //直接将skuImage放入到skuInfo中
        SkuInfo skuInfo = skuInfoMapper.selectByPrimaryKey(skuId);
        skuInfo.setSkuImageList(getSkuImageBySkuId(skuId));
        //查询平台属性集合
        SkuAttrValue skuAttrValue = new SkuAttrValue();
        skuAttrValue.setSkuId(skuId);
        skuInfo.setSkuAttrValueList(skuAttrValueMapper.select(skuAttrValue));
        return skuInfo;
    }

    @Override
    public List<SkuImage> getSkuImageBySkuId(String skuId) {
        //select * rom skuImage where skuId=?
        SkuImage skuImage = new SkuImage();
        skuImage.setSkuId(skuId);
        return skuImageMapper.select(skuImage);
    }

    @Override
    public List<SpuSaleAttr> getSpuSaleAttrListCheckBySku(SkuInfo skuInfo) {
        return spuSaleAttrMapper.selectSpuSaleAttrListCheckBySku(skuInfo.getId(),skuInfo.getSpuId());


    }

    @Override
    public List<SkuSaleAttrValue> getSkuSaleAttrValueListBySpu(String spuId) {
        //根据spuId查询数据
        return skuSaleAttrValueMapper.selectSkuSaleAttrValueListBySpu(spuId);
    }

    @Override
    public List<BaseAttrInfo> getAttrList(List<String> attrValueIdList) {
        String valueIds = StringUtils.join(attrValueIdList.toArray(), ",");
        System.out.println("valueIds:"+valueIds);
        return baseAttrInfoMapper.selectAttrInfoListByIds(valueIds);
    }
}
