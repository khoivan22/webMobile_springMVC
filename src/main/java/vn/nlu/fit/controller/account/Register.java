package vn.nlu.fit.controller.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.nlu.fit.entity.UserEntity;
import vn.nlu.fit.repositories.RoleRepository;
import vn.nlu.fit.repositories.UserRepository;
import vn.nlu.fit.validator.UserValidator;

import javax.validation.Valid;

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
    public String registerPage(Model model, UserEntity userEntity) {
        model.addAttribute("user", userEntity);
        return "user/register";
    }

    @PostMapping
    public String register(@Valid @ModelAttribute("user") UserEntity user, BindingResult bindingResult, UserValidator userValidator, Model model) {
        userValidator.validate(user, bindingResult);
        userValidator.checkUserExist(bindingResult,userRepository.findById(user.getUSER_NAME()).isPresent());
        userValidator.checkEmailExist(bindingResult,userRepository.findByEMAIL(user.getEMAIL())!=null);
        if (bindingResult.hasErrors()) {
            return "user/register";
        }
        user.setPASSWORD(encoder.encode(user.getPASSWORD()));
        user.setRole(roleRepository.findById((long) 2).get());
        userRepository.save(user);
        return "user/login";
    }
}
