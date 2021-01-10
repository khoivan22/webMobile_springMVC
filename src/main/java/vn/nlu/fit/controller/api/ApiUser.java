package vn.nlu.fit.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.entity.SupplierEntity;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.SupplerRepository;

import java.util.List;

@Controller
@RequestMapping("api")
public class ApiUser {
    @Autowired
    SupplerRepository supplier;

    @Autowired
    ProductRepository product;
    @RequestMapping("listMenu")
    public @ResponseBody
    List<SupplierEntity> listMenu() {

        return supplier.findAll();
    }
    @GetMapping("autoComplete")
    public @ResponseBody
    List<ProductEntity> autoComplete(@RequestParam("keySearch") String keySearch) {return product.seach(keySearch);}
}
