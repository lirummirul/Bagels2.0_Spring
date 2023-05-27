package com.itis.Bagels2.service;

import com.itis.Bagels2.model.Menu;
import com.itis.Bagels2.model.User;
import com.itis.Bagels2.repos.MenuRepo;
import com.itis.Bagels2.repos.UserRepo;
import jakarta.persistence.GenerationType;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class MenuService {
//    private List<Menu> menuList = new ArrayList<>();
    private final MenuRepo menuRepo;
    private final UserRepo userRepo;
    public List<Menu> listMenu(String name) {
        if (name != null) return menuRepo.findByName(name);
        return (List<Menu>) menuRepo.findAll();
    }

    public void saveMenu(Principal principal, Menu menu) throws IOException {
        menu.setUser(getUserByPrincipal(principal));
        log.info("Saving new Product. Title: {}; Author email: {}", menu.getName(), menu.getUser().getEmail());
//        Menu menuFromDb = userRepo.save(menu);
//        log.info("Saving new {}", menu);
        menuRepo.save(menu);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepo.findByEmail(principal.getName());
    }


    public void deleteMenu(Long id) {
        menuRepo.deleteById(id);
    }

    public Menu getMenuById(Long id) {
        return menuRepo.findById(id).orElse(null);
    }
}
