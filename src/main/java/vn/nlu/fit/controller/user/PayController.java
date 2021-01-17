package vn.nlu.fit.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.nlu.fit.entity.BillEntity;
import vn.nlu.fit.entity.CartEntity;
import vn.nlu.fit.entity.DetailBillEntity;
import vn.nlu.fit.repositories.AddressRepository;
import vn.nlu.fit.repositories.BillRepository;
import vn.nlu.fit.repositories.CartRepository;
import vn.nlu.fit.repositories.DetailBillRepository;
import vn.nlu.fit.springSecurity.MyUserDetail;
import vn.nlu.fit.until.SecurityUntil;
import vn.nlu.fit.until.Until;

import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("pay")
public class PayController {
    @Autowired
    CartRepository cartRepository;
    @Autowired
    BillRepository billRepository;
    @Autowired
    DetailBillRepository detailBillRepository;
    @Autowired
    AddressRepository addressRepository;

    @RequestMapping
    public String checkOutPage(Model model, BillEntity billEntity) {
        MyUserDetail myUserDetail = SecurityUntil.getPrincipal();
        if (myUserDetail != null) {
            List<CartEntity> litCart = cartRepository.findByUser(myUserDetail.getUser());
            model.addAttribute("listCart", litCart);
            billEntity.setTotalPrice(Until.getTotalPrice(litCart));
            model.addAttribute("bill", billEntity);
        }
        return "user/checkOut";
    }

    @PostMapping("buy")
    public String billPage(@ModelAttribute("bill") BillEntity bill, Model model, DetailBillEntity detailBill) {
        List<CartEntity> cartEntityList = cartRepository.findByUser(Objects.requireNonNull(SecurityUntil.getPrincipal()).getUser());
        if (!cartEntityList.isEmpty()) {
            bill.setUser(SecurityUntil.getPrincipal().getUser());
            bill.setAddress(addressRepository.save(bill.getAddress()));
            bill.setDate(Until.getCurrentDay());
            bill.setStatus(0);
            billRepository.save(bill);
            StringBuilder result= new StringBuilder();
            for (CartEntity c : cartEntityList) {
                detailBill.setId(null);
                detailBill.setAmount(c.getAmount());
                detailBill.setProduct(c.getProduct());
                detailBill.setBill(bill);
                result.append(c.getProduct().getPRODUCT_NAME()).append(" x").append(c.getAmount()).append(", ");
                detailBillRepository.save(detailBill);
                cartRepository.delete(c);
            }
            model.addAttribute("bill", bill);
            model.addAttribute("toString", result.substring(0,result.length()-2));
        }

        return "user/bill";
    }

}
