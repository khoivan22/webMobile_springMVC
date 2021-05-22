package vn.nlu.fit.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.entity.SupplierEntity;
import vn.nlu.fit.repositories.CartRepository;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.SupplerRepository;
import vn.nlu.fit.repositories.UserRepository;
import vn.nlu.fit.until.SecurityUntil;

import java.util.List;

@RestController
@RequestMapping("api")
public class ApiUser {
    @Autowired
    SupplerRepository supplier;

    @Autowired
    UserRepository userRepository;

    @Autowired
    ProductRepository product;

    @Autowired
    CartRepository cartRepository;

    @RequestMapping("listMenu")
    public List<SupplierEntity> listMenu() {

        return supplier.findAll();
    }

    @GetMapping("autoComplete")
    public List<ProductEntity> autoComplete(@RequestParam("keySearch") String keySearch) {
        return product.seach(keySearch);
    }

    @GetMapping("checkUserName")
    public boolean checkUserName(@RequestParam("userName") String userName) {
        System.out.println("------------------------"+userName);
        if (userRepository.findById(userName).isPresent()){
            System.out.println("++++++++++++++++");
            return false;
        }
        return true;
    }
    @GetMapping("amountCart")
    public int amountCart() {
      if(SecurityUntil.getPrincipal()!=null){
          return cartRepository.findByUser(SecurityUntil.getPrincipal().getUser()).size();
      }else
          return 0;
    }

}
