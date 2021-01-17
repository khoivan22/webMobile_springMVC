package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.BillEntity;
import vn.nlu.fit.entity.DetailBillEntity;
import vn.nlu.fit.repositories.BillRepository;
import vn.nlu.fit.repositories.DetailBillRepository;
import vn.nlu.fit.until.Until;

import java.util.List;


@Controller
@RequestMapping("admin/managerBill")
public class ManagerBillController {
    @Autowired
    BillRepository billRepository;

    @Autowired
    DetailBillRepository detailBillRepository;

    @RequestMapping("{numPage}")
    public String managerBillPage(Model model, @PathVariable int numPage) {

        Pageable pageable = PageRequest.of(numPage - 1, 8);
        model.addAttribute("pageTuts", billRepository.findAll(pageable));
        return "admin/managerBill";
    }

    @RequestMapping
    public String managerBillPage() {
        return "redirect:/admin/managerBill/1";
    }

    @RequestMapping("edit")
    public String editPage(Model model, @RequestParam("id") long id, BillEntity billEntity) {
        billEntity = billRepository.findById(id).get();
        billEntity.setToStringBil(Until.toStringBill(billEntity.getDetailBillEntity()));
        model.addAttribute("bill", billEntity);
        return "/admin/detailBill";
    }

    @PostMapping("edit")
    public String editProduct(@ModelAttribute("product") BillEntity billEntity) {
        billRepository.save(billEntity);
        return "redirect:/admin/managerBill/edit?id=" + billEntity.getId();
    }

    @PostMapping("deletes")
    public @ResponseBody
    boolean deletes(@RequestParam("ids") List<Long> ids) {
        for (long id : ids) {
            billRepository.deleteById(id);
        }
        return true;
    }
}
