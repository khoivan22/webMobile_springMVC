package vn.nlu.fit.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeAdminController {
    @RequestMapping
    public String listAllProduct(Model model) {
        return "redirect:/admin/homeAdmin";
    }
}
