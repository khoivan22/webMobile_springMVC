package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.nlu.fit.repositories.BillRepository;

@Controller
@RequestMapping("admin/managerBill")
public class ManagerBillController {
    @Autowired
    BillRepository billRepository;
    @RequestMapping("{numPage}")
    public String managerBillPage(Model model, @PathVariable int numPage){

        Pageable pageable = PageRequest.of(numPage - 1, 8);
        model.addAttribute("pageTuts", billRepository.findAll(pageable));
        return "admin/managerBill";
    }

    @RequestMapping
    public String listAllProduct() {
        return "redirect:/admin/managerBill/1";
    }
}
