package vn.nlu.fit.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import vn.nlu.fit.entity.SupplierEntity;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.SupplerRepository;
import vn.nlu.fit.until.UploadFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    ProductRepository product;
    @RequestMapping("/home")
    public String home(Model model) {
        model.addAttribute("listProduct", product.findByACTIVE(1));
        model.addAttribute("top10Price", product.getTop10Price());
        model.addAttribute("top10Star", product.getTop10Star());
        model.addAttribute("top10Sale", product.getTop10Sale());
        return "user/home";
    }
}
