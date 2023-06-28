package com.itis.Bagels2.controller;

import com.itis.Bagels2.model.Menu;
import com.itis.Bagels2.service.MenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class MainController {
    @Autowired
    private final MenuService menuService;

    @GetMapping("/")
    public String mainController(@RequestParam(name = "name", required = false) String name, Principal principal, Model model) {
        System.out.println("Лада, ты на страничке main");
        model.addAttribute("menuList", menuService.listMenu(name));
        model.addAttribute("user", menuService.getUserByPrincipal(principal));
        return "main";
    }

    @GetMapping("/main/{id}")
    public String menuInfo(@PathVariable Long id, Model model) {
        model.addAttribute("menu", menuService.getMenuById(id));
        return  "menuInfo";
    }

    @PostMapping("/main/create")
    public String createMenu(Menu menu, Principal principal) throws IOException {
        menuService.saveMenu(principal, menu);
        return "redirect:/main";
    }

    @PostMapping("/main/delete/{id}")
    public String deleteMenu(@PathVariable Long id) {
        menuService.deleteMenu(id);
        return "redirect:/";
    }

//    @PostMapping("/main")
//    public  String menuPost() {
//        return "main";
//    }
}

//    @GetMapping("/main")
//    public String main(Map<String, Object> model) {
//        Iterable<Menu> menu = menuRepo.findAll();
//
//        model.put("menu", menu);
//
//        return "main";
//    }


//    @GetMapping("/main")
//    public String main(@RequestParam(name = "title", required = false) String title, Model model) {
//        model.addAttribute("products", mainService.li(title));
//        return "main";
//    }


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