package com.itis.Bagels2.service;

import com.itis.Bagels2.model.Menu;
import jakarta.persistence.GenerationType;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuService {
    private List<Menu> menuList = new ArrayList<>();
    private long ID = 0;

    {
        menuList.add(new Menu(++ID, "name", 123, "description"));
        menuList.add(new Menu(++ID, "name2", 132, "describtion2"));
        menuList.add(new Menu(++ID, "name3", 132, "describtion3"));
        menuList.add(new Menu(++ID, "name4", 132, "describtion4"));
        menuList.add(new Menu(++ID, "name5", 132, "describtion5"));
    }

    public List<Menu> listMenu() { return menuList; }

    public void saveMenu(Menu menu) {
        menu.setId(++ID);
        menuList.add(menu);
    }

    public void deleteMenu(Long id) {
        menuList.removeIf(menu -> menu.getId().equals(id));
    }

    public Menu getMenuById(Long id) {
        for (Menu menu: menuList) {
            if (menu.getId().equals(id)) { return menu; }
        }
        return null;
    }
}
