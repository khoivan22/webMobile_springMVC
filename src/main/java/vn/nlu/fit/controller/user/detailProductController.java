package vn.nlu.fit.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.nlu.fit.service.ProductService;

@Controller
@RequestMapping("detail")
public class detailProductController {
    @Autowired
    ProductService product;

    @RequestMapping
    public String detail(Model model, @RequestParam String idProduct) {
        if (product.findById(idProduct).isPresent()) {
            model.addAttribute("product",product.findById(idProduct).get());
                System.out.println(product.findById(idProduct).get().getConfig().getCAMERA_BACK());
        }
        return "user/detailProduct";
    }
}
