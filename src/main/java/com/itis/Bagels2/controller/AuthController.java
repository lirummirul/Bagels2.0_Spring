package com.itis.Bagels2.controller;

import com.itis.Bagels2.model.LoginForm;
import com.itis.Bagels2.model.User;
import com.itis.Bagels2.service.CustomUserDetailsService;
import com.itis.Bagels2.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequiredArgsConstructor
public class AuthController {
    @Autowired
    private final UserService userService;
    @Autowired
    private final CustomUserDetailsService customUserDetailsService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }
//    @RequestMapping(value = "/login")
////    @PreAuthorize("isAnonymous()")
//    public String login(@RequestParam(required = false) String error, @ModelAttribute("loginForm") LoginForm loginForm, BindingResult result, ModelMap map) {
//        map.put("error", error);
//        return "login";
//    }

    @PostMapping("/login")

    public String succesLogin() {
        return "main";
    }

//    @PostMapping("/login")
//    public String successLogin() {
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String username = auth.getName();
//        User user = (User) customUserDetailsService.loadUserByUsername(username);
//        System.out.println("Привет, Лада, ты тут:)");
//        System.out.println("Username = " + username);
//        System.out.println("User = " + user);
//        if (user != null) {
//            return "redirect:/main";
//        } else {
//            return "redirect:/login?error";
//        }
//    }

    @GetMapping("/signUp")
    @PreAuthorize("isAnonymous()")
    public String signUp() {
        return "signUp";
    }

    @PostMapping("/signUp")
    @PreAuthorize("isAnonymous()")
    public String createUser(User user) {
        userService.createUser(user);

        System.out.println("Лада, ты зашла в POST метод через регистрацию!!!");
        return "redirect:/login";
    }
}

//    @GetMapping("/user/{user}")
//    public String userInfo(@PathVariable("user") User user, Model model) {
//        model.addAttribute("user", user);
//        model.addAttribute("products", user.getMenus());
//        return "user";
//    }


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