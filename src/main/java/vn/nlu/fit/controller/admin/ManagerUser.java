package vn.nlu.fit.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.nlu.fit.entity.UserEntity;
import vn.nlu.fit.repositories.UserRepository;
import vn.nlu.fit.until.SecurityUntil;

import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("admin/managerUser")
public class ManagerUser {
    @Autowired
    UserRepository userRepository;

    @RequestMapping("{numPage}")
    public String managerUserPage(Model model, @PathVariable int numPage){
        Pageable paging = PageRequest.of(numPage - 1, 8);
        Page<UserEntity> pageTuts = userRepository.findAll(paging);
        model.addAttribute("pageTuts", pageTuts);
        return "admin/managerUser";
    }
    @RequestMapping
    public String managerUserPage() {
        return "redirect:/admin/managerUser/1";
    }

    @PostMapping("deletes")
    public @ResponseBody
    boolean deletes(@RequestParam("ids") List<String> ids) {
        for (String id : ids) {
            if(Objects.requireNonNull(SecurityUntil.getPrincipal()).getUsername().equals(id))
                return false;
            userRepository.deleteById(id);
        }
        return true;
    }
    @RequestMapping("edit")
    public String editPage(Model model, @RequestParam("id") String id) {

        model.addAttribute("user", userRepository.findById(id).get());
        return "/admin/detailUser";
    }

    @PostMapping("edit")
    public String editProduct(@ModelAttribute("product") UserEntity userEntity) {
        if(!Objects.requireNonNull(SecurityUntil.getPrincipal()).getUsername().equals(userEntity.getUSER_NAME()))
        userRepository.save(userEntity);
        return "redirect:/admin/managerUser/edit?id=" + userEntity.getUSER_NAME();
    }
}
