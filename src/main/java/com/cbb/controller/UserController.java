package com.cbb.controller;

import com.cbb.dao.UserDao;
import com.cbb.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RestController
public class UserController {
    @Autowired
    UserDao userDao;

    @GetMapping("/user/{id}")
    public User getUser(@PathVariable int id){
     return    userDao.findOne(id);
    }
@RequestMapping("/cbbuser/{id}")
//@ResponseBody
    public  String  getStr(@PathVariable String id,Model model){

//    User user = new User();
//    user.setId(Integer.getInteger(id));
//    user.setName("cbb"+id);
    String a = id+"cbb";

        return a;
    }

    @RequestMapping("/rp")

    public String testRequestParams(@RequestParam String name,@RequestParam(value = "username") String username){

        return name+"-----"+"username";
    }
}
