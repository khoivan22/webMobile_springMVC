package vn.nlu.fit.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeAdminController {
    @RequestMapping("admin/home")
    public String listAllProduct() {
        return "admin/homeAdmin";
    }
}
