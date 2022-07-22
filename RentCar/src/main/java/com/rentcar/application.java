package com.rentcar;

import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;

import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class application {

    public static final String APPLICATION_LOCATIONS = "spring.config.location="
            + "classpath:application.properties,"
            + "classpath:kakao.properties";

    public static void main(String[] args) {
        new SpringApplicationBuilder(application.class)
                .properties(APPLICATION_LOCATIONS)
                .run(args);
    }
}