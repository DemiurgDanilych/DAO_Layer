package ru.netology.model;

import lombok.Data;

@Data
public class Buyer {
    private Long id;
    private String name;
    private String surname;
    private int age;
    private String phoneNumber;
    private String product_name;

}
