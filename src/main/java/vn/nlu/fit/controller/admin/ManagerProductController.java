package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.nlu.fit.entity.ConfigurationEntity;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.repositories.ConfigurationRepository;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.SupplerRepository;

@Controller
@RequestMapping("admin/managerProduct")
public class ManagerProductController {
    @Autowired
    ProductRepository product;

    @Autowired
    SupplerRepository suppler;



    @RequestMapping("{numPage}")
    public String lisAllProduct(Model model, @PathVariable int numPage) {
        Pageable paging = PageRequest.of(numPage - 1, 12);
        Page<ProductEntity> pageTuts = product.findAll(paging);
        model.addAttribute("pageTuts", pageTuts);
        return "admin/managerProduct";
    }

    @RequestMapping
    public String listAllProduct(Model model) {
        return "redirect:/admin/managerProduct/1";
    }


    @RequestMapping("add")
    public String add(Model model) {
        model.addAttribute("product", new ProductEntity());
        model.addAttribute("listSupplier", suppler.findAll());
        model.addAttribute("detailProduct", new ConfigurationEntity());
        return "admin/addProduct";
    }


}
