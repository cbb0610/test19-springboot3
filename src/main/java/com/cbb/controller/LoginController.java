package com.cbb.controller;

import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class LoginController {
    @RequestMapping("/user/login")
    public String login(@RequestParam("username") String username, HttpServletRequest request, Map<String,Object> map){
       String password = request.getParameter("password");
       if(!StringUtils.isEmpty(username) && "123456".equals(password)){
           //登录成功
           request.getSession().setAttribute("loginUser",username);
           return "dashboard";
       }else{
           //登录失败0554  20375409
         map.put("msg","用户名密码不对");
         return "login";
       }
    }
}
