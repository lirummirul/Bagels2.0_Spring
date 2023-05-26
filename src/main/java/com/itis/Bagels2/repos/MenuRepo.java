package com.itis.Bagels2.repos;

import com.itis.Bagels2.model.Menu;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MenuRepo extends CrudRepository<Menu, Long> {
    List<Menu> findByName(String name);
}
