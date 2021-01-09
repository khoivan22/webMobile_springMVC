package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.repositories.ItemsRepository;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.repositories.SupplerRepository;
import vn.nlu.fit.until.Until;
import vn.nlu.fit.until.UploadFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("admin/managerProduct")
public class ManagerProductController {
    @Autowired
    ProductRepository productRepository;

    @Autowired
    SupplerRepository supplerRepository;

    @Autowired
    ItemsRepository itemsRepository;


    @RequestMapping("{numPage}")
    public String lisAllProduct(Model model, @PathVariable int numPage) {
        Pageable paging = PageRequest.of(numPage - 1, 8);
        Page<ProductEntity> pageTuts = productRepository.findAll(paging);
        model.addAttribute("pageTuts", pageTuts);
        return "admin/managerProduct";
    }

    @RequestMapping
    public String listAllProduct(Model model) {
        return "redirect:/admin/managerProduct/1";
    }


    @RequestMapping("add")
    public String addPage(Model model) {
        model.addAttribute("product", new ProductEntity());
        model.addAttribute("listSupplier", supplerRepository.findAll());
        model.addAttribute("listItem", itemsRepository.findAll());
        model.addAttribute("par", "add");
        return "/admin/addAndEditProduct";
    }

    @PostMapping("add")
    private String addProduct(@ModelAttribute("product") ProductEntity product, HttpServletRequest request) throws IOException {

        //upload image
        product.setIMG(UploadFile.upFiles(product.getMultipleFiles(), request));

        String idPro = Until.createId(productRepository.ok().get(0).getID_PRODUCT());
//        System.out.println(idPro);

        product.setID_PRODUCT(idPro);
        product.setACTIVE(1);
        product.getConfig().setProduct(product);
//        System.out.println(product.getSupp().getNAME_SUPPLIER()+"-----------------");
//        product.setSupp(supplerRepository.findById(product.getSupp().getID_SUPPLIER()).get());
//        product.setItem(itemsRepository.findById(product.getItem().getID_ITEMS()).get());

        ProductEntity p = productRepository.save(product);

        return "redirect:/admin/managerProduct/add";

    }

    @RequestMapping("edit")
    public String editPage(Model model, @RequestParam("id") String id) {

        model.addAttribute("product", productRepository.findById(id).get());
        model.addAttribute("listSupplier", supplerRepository.findAll());
        model.addAttribute("listItem", itemsRepository.findAll());
        model.addAttribute("par", "edit");
        return "/admin/addAndEditProduct";
    }

    @PostMapping("edit")
    public String editProduct(@ModelAttribute("product") ProductEntity product) {
        System.out.println(product.getID_PRODUCT());
//        product.setComment(productRepository.findById(product.getID_PRODUCT()).get().getComment());
//        product.setListBill(productRepository.findById(product.getID_PRODUCT()).get().getListBill());
        productRepository.save(product);
        return "redirect:/admin/managerProduct/edit?id=" + product.getID_PRODUCT();
    }

    @PostMapping("deletes")
    public @ResponseBody
    boolean deletes(@RequestParam("ids") List<String> ids) {
        for (String id : ids) {
            productRepository.deleteById(id);
        }
        return true;
    }

    @RequestMapping("active")
    public @ResponseBody
    int active(@RequestParam("id") String id) {
        ProductEntity product = productRepository.findById(id).get();
        int status=product.getACTIVE() == 0 ? 1 : 0;
        product.setACTIVE(status);
        productRepository.save(product);
        return status;
    }
}
