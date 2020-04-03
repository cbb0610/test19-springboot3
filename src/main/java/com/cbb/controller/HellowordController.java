package com.cbb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.lang.reflect.Array;
import java.sql.JDBCType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@Controller
public class HellowordController {
    @ResponseBody
    @RequestMapping("/hello")
    public String hello(){
        return "hello-------------";
    }

    @RequestMapping("/login")
    public String login(Map<String ,Object> map){
        map.put("username","cbbIndex-themly模板使用");
        map.put("h2","<h2>utext解析标签显示</h2>");
        map.put("users", Arrays.asList("zhangsan","lisi","wangwu"));
        map.put("int","1");
        map.put("dy","2");
        map.put("xy",0);
        return "login";
    }
    @RequestMapping("/index")
    public String index(Map<String ,Object> map){
        map.put("username","cbbIndex-themly模板使用");
        map.put("h2","<h2>utext解析标签显示</h2>");
        map.put("users", Arrays.asList("zhangsan","lisi","wangwu"));
        map.put("int","1");
        map.put("dy","2");
        map.put("xy",0);
        return "index";
    }
}
