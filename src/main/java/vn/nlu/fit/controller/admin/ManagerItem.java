package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.ItemsEntity;
import vn.nlu.fit.repositories.ItemsRepository;

import java.util.List;

@Controller
@RequestMapping("admin/managerItem")
public class ManagerItem {
    @Autowired
    ItemsRepository itemsRepository;

    @RequestMapping("{numPage}")
    public String managerItem(Model model, @PathVariable int numPage) {

        Pageable pageable = PageRequest.of(numPage - 1, 12);
        model.addAttribute("pageTuts", itemsRepository.findAll(pageable));
        return "admin/managerItem";
    }

    @RequestMapping
    public String managerItem(Model model) {
        return "redirect:/admin/managerItem/1";
    }

    @RequestMapping("add")
    public String addPage(Model model) {
        model.addAttribute("item", new ItemsEntity());
        model.addAttribute("par", "add");
        return "admin/addAndEditItem";
    }

    @PostMapping("add")
    public String add(@ModelAttribute("item") ItemsEntity item) {

        itemsRepository.save(item);
        return "redirect:/admin/managerItem/add";
    }

    @RequestMapping("check")
    public @ResponseBody
    boolean check(@RequestParam("id") String id) {
        return itemsRepository.findById(id).isPresent();
    }

    @RequestMapping("edit")
    public String editPage(Model model, @RequestParam("id") String id) {
        model.addAttribute("item", itemsRepository.findById(id).get());
        model.addAttribute("par", "edit");
        return "admin/addAndEditItem";
    }

    @PostMapping("edit")
    public String edit(@ModelAttribute("item") ItemsEntity item) {
        itemsRepository.save(item);
        return "redirect:/admin/managerItem/edit?id=" + item.getID_ITEMS();
    }
    @PostMapping("deletes")
    public @ResponseBody boolean deletes(@RequestParam("ids") List<String> ids){
        for (String id:ids) {
            itemsRepository.deleteById(id);
        }

        return true;
    }
    
}
