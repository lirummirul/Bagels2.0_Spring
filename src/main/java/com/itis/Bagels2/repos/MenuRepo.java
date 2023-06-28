package com.itis.Bagels2.repos;

import com.itis.Bagels2.model.Menu;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface MenuRepo extends CrudRepository<Menu, Long> {
    List<Menu> findByName(String name);
}
