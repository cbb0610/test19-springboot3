package com.cbb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class Test19SpringBoot3Application {

	public static void main(String[] args) {
		SpringApplication.run(Test19SpringBoot3Application.class, args);
	}

	@RequestMapping(value="/",produces = "text/plain;charset=utf-8")
	public String index(){
		System.out.print("sssssssssssss");
		return "cbb11";
	}

	protected SpringApplicationBuilder configure(SpringApplicationBuilder  builder){
      return builder.sources(this.getClass());
	}
}
