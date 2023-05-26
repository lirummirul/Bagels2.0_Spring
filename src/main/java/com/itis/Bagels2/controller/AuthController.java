package com.itis.Bagels2.controller;

import com.itis.Bagels2.model.Role;
import com.itis.Bagels2.model.User;
import com.itis.Bagels2.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;


@Controller
public class AuthController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String successLogin() {
        return "main";
    }

    @GetMapping("/signUp")
    public String signUp() {
        return "signUP";
    }

    @PostMapping("/signUp")
    public String addUser(User user, Map<String, Object> model) {
        User userFromDb = userRepo.findByUsername(user.getUsername());

//        if (userFromDb != null) {
//            model.put("message", "User exists!");
//            return "signUp";
//        }

        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "redirect:/login";
    }
}
