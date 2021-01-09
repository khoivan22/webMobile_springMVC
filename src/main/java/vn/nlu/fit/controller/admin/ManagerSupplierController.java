package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.SupplierEntity;
import vn.nlu.fit.repositories.SupplerRepository;

import java.util.List;

@Controller
@RequestMapping("admin/managerSupplier")
public class ManagerSupplierController {
    @Autowired
    SupplerRepository supplerRepository;

    @RequestMapping("{numPage}")
    public String managerSupplier(Model model, @PathVariable int numPage) {

        Pageable pageable = PageRequest.of(numPage - 1, 8);
        model.addAttribute("pageTuts", supplerRepository.findAll(pageable));
        return "admin/managerSupplier";
    }

    @RequestMapping
    public String managerSupp(Model model) {
        return "redirect:/admin/managerSupplier/1";
    }

    @RequestMapping("add")
    public String addPage(Model model) {
        model.addAttribute("supp", new SupplierEntity());
        model.addAttribute("par", "add");
        return "admin/addAndEditSupplier";
    }

    @PostMapping("add")
    public String add(@ModelAttribute("supp") SupplierEntity supp) {

        supplerRepository.save(supp);
        return "redirect:/admin/managerSupplier/add";
    }

    @RequestMapping("check")
    public @ResponseBody
    boolean check(@RequestParam("id") String id) {
        return supplerRepository.findById(id).isPresent();
    }

    @RequestMapping("edit")
    public String editPage(Model model, @RequestParam("id") String id) {
        model.addAttribute("supp", supplerRepository.findById(id).get());
        model.addAttribute("par", "edit");
        return "admin/addAndEditSupplier";
    }

    @PostMapping("edit")
    public String edit(@ModelAttribute("sup") SupplierEntity supp) {
        supplerRepository.save(supp);
        return "redirect:/admin/managerSupplier/edit?id=" + supp.getID_SUPPLIER();
    }
    @PostMapping("deletes")
    public @ResponseBody boolean deletes(@RequestParam("ids") List<String> ids){
        for (String id:ids) {
            supplerRepository.deleteById(id);
        }

        return true;
    }
}
