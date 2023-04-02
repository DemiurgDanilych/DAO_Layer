package ru.netology.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.model.Buyer;
import ru.netology.repositori.MysqlRepositori;

@RestController
public class MysqlController {
    @Autowired
    private final MysqlRepositori mysqlRepositori;

    public MysqlController(MysqlRepositori mysqlRepositori) {
        this.mysqlRepositori = mysqlRepositori;
    }

    @GetMapping("/products/fetch-product")
    public Buyer getSqlSetup(@RequestParam String name) {
        return mysqlRepositori.getProductName(name);
    }

    @PostMapping("/post")
    public Buyer getSqlSetups(@RequestParam String name) {

        return mysqlRepositori.getProductName(name);
    }
}

