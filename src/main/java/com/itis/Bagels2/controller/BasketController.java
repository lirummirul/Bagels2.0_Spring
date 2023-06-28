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
public class BasketController {
    private final MenuService menuService;

    @GetMapping("/basket")
    public String basketContr(User user, Model model, Principal principal) {
        model.addAttribute("user", menuService.getUserByPrincipal(principal));
        return "basket";
    }
}
