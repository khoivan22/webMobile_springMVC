package vn.nlu.fit.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.nlu.fit.repositories.ProductRepository;

@Controller
@RequestMapping("detail")
public class detailProductController {
    @Autowired
    ProductRepository productRepository;

    @RequestMapping
    public String detail(Model model, @RequestParam String idProduct) {
        if (productRepository.findById(idProduct).isPresent()) {
            model.addAttribute("product", productRepository.findById(idProduct).get());
                System.out.println(productRepository.findById(idProduct).get().getConfig().getCAMERA_BACK());
        }
        return "user/detailProduct";
    }
}
