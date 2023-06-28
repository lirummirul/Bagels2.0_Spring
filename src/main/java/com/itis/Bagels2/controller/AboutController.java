package com.itis.Bagels2.controller;

import com.itis.Bagels2.model.User;
import com.itis.Bagels2.service.MenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class AboutController {
    private final MenuService menuService;

    @GetMapping("/about")
    public String aboutContr(User user, Model model, Principal principal) {
        model.addAttribute("user", menuService.getUserByPrincipal(principal));
        return "about";
    }
}
