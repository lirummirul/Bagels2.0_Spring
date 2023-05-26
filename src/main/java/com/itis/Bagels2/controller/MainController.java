package com.itis.Bagels2.controller;

import com.itis.Bagels2.model.Menu;
import com.itis.Bagels2.repos.MenuRepo;
import com.itis.Bagels2.service.MenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

// All Menu
@Controller
@RequiredArgsConstructor
public class MainController {
    private final MenuService menuService;

    @Autowired
    private MenuRepo menuRepo;

//    @GetMapping("/main")
//    public String main(Map<String, Object> model) {
//        Iterable<Menu> menu = menuRepo.findAll();
//
//        model.put("menu", menu);
//
//        return "main";
//    }

    @GetMapping("/main")
    public String main(Model model) {
        model.addAttribute("menuList", menuService.listMenu());
        return "main";
    }

    @GetMapping("/main/{id}")
    public String menuInfo(@PathVariable Long id, Model model) {
        model.addAttribute("menu", menuService.getMenuById(id));
        return  "menuInfo";
    }

//    @PostMapping("filter")
//    public String filter(@RequestParam String filter, Map<String, Object> model) {
//        Iterable<Menu> menu;
//
//        if (filter != null && !filter.isEmpty()) {
//            menu = menuRepo.findByName(filter);
//        } else {
//            menu = menuRepo.findAll();
//        }
//
//        model.put("menu", menu);
//
//        return "main";
//    }
}
