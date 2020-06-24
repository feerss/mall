package com.my.gmail.controller;

import org.apache.commons.lang3.StringUtils;
import org.csource.common.MyException;
import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.StorageClient;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerServer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@CrossOrigin
public class FileUploadController {

    //@value 使用条件是当前类必须在spring的容器当中
    @Value("${fileServer.url}")
    private String fileUrl;//fileUrl=http://192.168.1.229
//    String ip="http://192.168.1.229";  硬编码
    //http://192.168.1.229  服务器的ip地址 作为一个配置文件放入项目中！ 软编码！
    //获取上传文件，需要使用springmvc技术
    @RequestMapping("fileUpload")
    public String fileUpload(MultipartFile file) throws IOException, MyException {
        String imgUrl = fileUrl;//imgUrl=http://192.168.1.229
        //当文件不为空的时候上传
        if (file != null) {
            String configFile = this.getClass().getResource("/tracker.conf").getFile();
            ClientGlobal.init(configFile);
            TrackerClient trackerClient=new TrackerClient();
            //获取连接
            TrackerServer trackerServer=trackerClient.getConnection();
            StorageClient storageClient=new StorageClient(trackerServer,null);
            //获取上传文件的名称
            String originalFilename = file.getOriginalFilename();
            //获取文件的后缀名
            String extName = StringUtils.substringAfterLast(originalFilename, ".");

//            String orginalFilename="E:\\img\\img1.jpg";
            //上传图片
//            String[] upload_file = storageClient.upload_file(originalFilename, extName, null);获取本地文件
            String[] upload_file = storageClient.upload_file(file.getBytes(), extName, null);
            for (int i = 0; i < upload_file.length; i++) {
                String path = upload_file[i];
                System.out.println("s = " + path);
                imgUrl += "/" + path;
        }
        }
        return imgUrl;
    }
}
