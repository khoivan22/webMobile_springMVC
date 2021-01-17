package vn.nlu.fit.until;

import vn.nlu.fit.entity.CartEntity;
import vn.nlu.fit.entity.DetailBillEntity;

import java.time.LocalDateTime;
import java.util.List;

public class Until {

public static String createId(String id){
    String[] s= id.split("\\.");
    return s[0]+"."+(Integer.parseInt(s[1])+1)+"";
}

public static  double getTotalPrice(List<CartEntity> list){
    double result=0;
    for (CartEntity  cart: list) {
        result+=cart.getAmount()*cart.getProduct().getPRICE();
    }
    return result;
}
public static String getCurrentDay(){
    LocalDateTime now = LocalDateTime.now();
    return now.getDayOfMonth()+"-"+now.getMonth()+"-"+now.getYear();
}

    public static String toStringBill(List<DetailBillEntity> list){
        String result="";
        for (DetailBillEntity d: list){
            result+=d.getProduct().getPRODUCT_NAME()+" x"+d.getAmount()+", ";
        }
        return result.substring(0,result.length()-2);
    }
    public static void main(String[] args) {
        System.out.println(getCurrentDay());
    }
}
