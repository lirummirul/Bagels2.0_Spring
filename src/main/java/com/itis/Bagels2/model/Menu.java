package com.itis.Bagels2.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@AllArgsConstructor
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private Integer price_per_price;
    private String description;

    public Menu() {
    }

    public Long getId() {
        return this.id;
    }

    public Long setId(Long id) {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int getPrice_per_price() {
        return this.price_per_price;
    }

    public String getDescription() {
        return this.description;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice_per_price(int price_per_price) {
        this.price_per_price = price_per_price;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
