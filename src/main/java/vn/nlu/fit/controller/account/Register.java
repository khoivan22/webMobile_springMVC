package vn.nlu.fit.controller.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.nlu.fit.entity.UserEntity;
import vn.nlu.fit.repositories.RoleRepository;
import vn.nlu.fit.repositories.UserRepository;

@Controller
@RequestMapping("register")
public class Register {
    @Autowired
    PasswordEncoder encoder;
    @Autowired
    UserRepository userRepository;
    @Autowired
    RoleRepository roleRepository;

    @RequestMapping
    public String registerPage(Model model) {
        model.addAttribute("user", new UserEntity());
        return "user/register";
    }

    @PostMapping
    public String register(@ModelAttribute("user") UserEntity user) {

        user.setPASSWORD(encoder.encode(user.getPASSWORD()));
        user.setRole(roleRepository.findById((long)2).get());
        userRepository.save(user);
        return "user/login";
    }
}
