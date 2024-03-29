package com.rentcar.config;


import com.rentcar.utility.UploadList;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {


        // Windows: path = "f:/AIstudy/deploy/shopping/contents/storage";
        // ▶ file:///f:/AIstudy/deploy/shopping/contents/storage
        // Ubuntu: path = "/home/ubuntu/deploy/shopping/contents/storage";
        // ▶ file:////home/ubuntu/deploy/shopping/contents/storage
        // JSP 인식되는 경로: http://localhost:8000/contents/storage";

        registry.addResourceHandler("/summernoteImage/**")
                .addResourceLocations("file:///C:/summernote_image/");

        registry.addResourceHandler("/notice/fileDown")
                .addResourceLocations("file:///D:/Github_upload/projectSaveF/files/");

    }
}