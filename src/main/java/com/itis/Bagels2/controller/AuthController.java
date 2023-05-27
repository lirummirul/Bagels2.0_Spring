package com.itis.Bagels2.controller;

import com.itis.Bagels2.model.User;
import com.itis.Bagels2.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
@RequiredArgsConstructor
public class AuthController {
    private final UserService userService;

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
        return "signUp";
    }

    @PostMapping("/signUp")
    public String createUser(User user) {
        userService.createUser(user);
        return "redirect:/login";
    }

}

//    @PostMapping("/signUp")
//    public String addUser(User user, Map<String, Object> model) {
//        User userFromDb = userRepo.findByEmail(user.getEmail());
//
////        if (userFromDb != null) {
////            model.put("message", "User exists!");
////            return "signUp";
////        }
//
//        user.setRoles(Collections.singleton(Role.USER));
//        userRepo.save(user);
//
//        return "redirect:/login";
//    }