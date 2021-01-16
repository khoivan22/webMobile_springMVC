package vn.nlu.fit.until;

import vn.nlu.fit.entity.CartEntity;

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
public  static  int getTotalAmount(List<CartEntity> list){
    int result=0;
    for (CartEntity  cart: list) {
        result+=cart.getAmount();
    }
    return result;
}
public static String getCurrentDay(){
    LocalDateTime now = LocalDateTime.now();
    return now.getDayOfMonth()+"-"+now.getMonth()+"-"+now.getYear();
}

    public static void main(String[] args) {
        System.out.println(getCurrentDay());
    }
}
