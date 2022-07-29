package com.rentcar.utility.Ncloud.controller;

import com.rentcar.utility.Ncloud.AwsS3;
import com.rentcar.utility.Ncloud.service.AwsS3Service;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;

@RestController
@RequestMapping("/s3")
@RequiredArgsConstructor
public class AwsS3Controller {

    private final AwsS3Service awsS3Service;

    @PostMapping("/resource")
    public AwsS3 upload(@RequestPart("file") MultipartFile multipartFile) throws IOException {

        AwsS3 s3 = awsS3Service.upload(multipartFile,"user");

       // Map<String. String> map = new HashMap<>();

       // map.put("fname",dto.fname);
       // map.put("key", s3.getKey())


        return null;
    }

    @GetMapping("/resource/{idx}")
    public void get(@PathVariable("idx") String idx) {
        awsS3Service.get(idx);
    }

    @DeleteMapping("/resource")
    public void remove(AwsS3 awsS3) {
        awsS3Service.remove(awsS3);
    }
}