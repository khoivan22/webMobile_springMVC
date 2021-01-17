package vn.nlu.fit.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.entity.SupplierEntity;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.SupplerRepository;

import java.util.List;

@RestController
@RequestMapping("api")
public class ApiUser {
    @Autowired
    SupplerRepository supplier;

    @Autowired
    ProductRepository product;
    @RequestMapping("listMenu")
    public List<SupplierEntity> listMenu() {

        return supplier.findAll();
    }
    @GetMapping("autoComplete")
    public List<ProductEntity> autoComplete(@RequestParam("keySearch") String keySearch) {return product.seach(keySearch);}

    @GetMapping("checkUserName")
    public boolean checkUserName(){

        return true;
    }
}
