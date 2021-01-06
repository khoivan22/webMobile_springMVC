package vn.nlu.fit.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.repositories.ProductRepository;


import java.util.List;

@Controller
@RequestMapping("listProduct")
public class ListProductController {


    @Autowired
    ProductRepository product;

    @RequestMapping("{numPage}")
    public String lisAllProduct(Model model, @PathVariable int numPage) {
        Pageable paging = PageRequest.of(numPage - 1, 12);
        Page<ProductEntity> pageTuts = product.findAll(paging);
        model.addAttribute("pageTuts", pageTuts);
        return "user/listProduct";
    }

    @RequestMapping
    public String listAllProduct(Model model) {
        return "redirect:/listProduct/1";
    }

    @RequestMapping("search/{keySearch}/{numPage}")
    public String searchByName(Model model, @PathVariable String keySearch, @PathVariable int numPage) {
        Pageable paging = PageRequest.of(numPage - 1, 12);
        Page<ProductEntity> pageTuts = product.seach(keySearch, paging);
        model.addAttribute("pageTuts", pageTuts);
        return "user/listProduct";
    }

    @RequestMapping("search")
    public String searchs(Model model, @RequestParam String keySearch) {
        return "redirect:/listProduct/search/" + keySearch + "/1";
    }

    @GetMapping("autoComplete")
    public @ResponseBody
    List<ProductEntity> autoComplete(Model model, @RequestParam("keySearch") String keySearch) {return product.seach(keySearch);}

    @RequestMapping("{idSupplier}/{numPage}")
    public String lisSupplierProduct(Model model, @PathVariable String idSupplier, @PathVariable int numPage) {
        Pageable paging = PageRequest.of(numPage - 1, 12);
        Page<ProductEntity> pageTuts = product.getProductBySupplier(idSupplier, paging);
        model.addAttribute("pageTuts", pageTuts);
        return "user/listProduct";
    }

    @RequestMapping("test")
    public @ResponseBody
    String lisSupplierProduct() {
        Pageable paging = PageRequest.of(0, 12);

        Page<ProductEntity> pageTuts = product.getProductBySupplier("APP", paging);

        System.out.println("In ra số togn page: " + pageTuts.getTotalPages());
        System.out.println("In ra số lượng user ở page hiện tại: " + pageTuts.getSize());
        System.out.println("In ra tổng số lượng : " + pageTuts.getTotalElements());
        System.out.println("numPage" + pageTuts.getNumber());

        return "ok";
    }
}
