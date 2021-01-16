package vn.nlu.fit.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.CartEntity;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.repositories.CartRepository;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.UserRepository;
import vn.nlu.fit.springSecurity.MyUserDetail;
import vn.nlu.fit.until.SecurityUntil;
import vn.nlu.fit.until.Until;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("cart")
public class CartController {
    @Autowired
    CartRepository cartRepository;

    @Autowired
    ProductRepository productRepository;


    @RequestMapping
    public String cartPage(Model model) {
        MyUserDetail myUserDetail = SecurityUntil.getPrincipal();
        if (myUserDetail != null) {
            List<CartEntity> litCart = cartRepository.findByUser(myUserDetail.getUser());
            model.addAttribute("listCart", litCart);
            model.addAttribute("totalPrice", Until.getTotalPrice(litCart));
//            model.addAttribute("totalAmount", Until.getTotalAmount(litCart));
        }
        return "user/cart";
    }

    @RequestMapping("add")
    public @ResponseBody
    boolean addCart(@RequestParam("idProduct") String idProduct, CartEntity cartEntity) {
        MyUserDetail myUserDetail = SecurityUntil.getPrincipal();
        if (myUserDetail != null) {
            List<CartEntity> cart = cartRepository.findByUserAndProduct(myUserDetail.getUser(), productRepository.getOne(idProduct));
            if (cart.isEmpty()) {
                cartEntity.setUser(myUserDetail.getUser());
                cartEntity.setAmount(1);
                cartEntity.setProduct(productRepository.getOne(idProduct));

                cartRepository.save(cartEntity);
            } else {
                cart.get(0).setAmount(cart.get(0).getAmount() + 1);
                cartRepository.save(cart.get(0));
            }
            return true;
        }
        return false;
    }

    @RequestMapping("minus")
    public @ResponseBody
    boolean minusCart(@RequestParam("idProduct") String idProduct) {
        MyUserDetail myUserDetail = SecurityUntil.getPrincipal();
        if (myUserDetail != null) {
            List<CartEntity> cart = cartRepository.findByUserAndProduct(myUserDetail.getUser(), productRepository.getOne(idProduct));
            if (cart.get(0).getAmount() > 2) {
                cart.get(0).setAmount(cart.get(0).getAmount() - 1);
            } else {
                cart.get(0).setAmount(1);
            }
            cartRepository.save(cart.get(0));
            return true;
        }
        return false;
    }

    @RequestMapping("delete")
    public String delCart(@RequestParam("idProduct") String idProduct) {
        MyUserDetail myUserDetail = SecurityUntil.getPrincipal();
        if (myUserDetail != null) {
            List<CartEntity> cart = cartRepository.findByUserAndProduct(myUserDetail.getUser(), productRepository.getOne(idProduct));
            cartRepository.delete(cart.get(0));
        }
        return "redirect:/cart";
    }

}
