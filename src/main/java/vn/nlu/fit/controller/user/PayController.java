package vn.nlu.fit.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("pay")
public class PayController {
    @RequestMapping
    public  String  checkOutPage(){

        return "user/checkOut";
    }

    @RequestMapping("bill")
    public String billPage(){

        return "user/bill";
    }

}
