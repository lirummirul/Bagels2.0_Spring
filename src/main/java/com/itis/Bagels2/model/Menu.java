package com.itis.Bagels2.model;

import lombok.AllArgsConstructor;
import javax.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@Table(name = "menu")
@Data
@NoArgsConstructor
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "price_per_price")
    private Integer price_per_price;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;

//    public Menu() { } // у меня этот пустой конструктор не требуется из-за анотации @NoArgsConstructor
//
//
//    public Long getId() {
//        return this.id;
//    }
//
//    public Long setId(Long id) {
//        return this.id;
//    }
//
//    public String getName() {
//        return this.name;
//    }
//
//    public int getPrice_per_price() {
//        return this.price_per_price;
//    }
//
//    public String getDescription() {
//        return this.description;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public void setPrice_per_price(int price_per_price) {
//        this.price_per_price = price_per_price;
//    }
//
//    public void setDescription(String description) {
//        this.description = description;
//    }

}
