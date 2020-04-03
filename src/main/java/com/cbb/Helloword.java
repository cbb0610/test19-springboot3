package com.cbb;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = "com.cbb.mapper")
public class Helloword {
    public static void main(String[] args) {

        SpringApplication.run(Helloword.class, args);

    }
}
