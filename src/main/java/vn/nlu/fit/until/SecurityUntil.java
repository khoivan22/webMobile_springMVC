package vn.nlu.fit.until;

import org.springframework.security.core.context.SecurityContextHolder;
import vn.nlu.fit.springSecurity.MyUserDetail;

public class SecurityUntil {
    public static MyUserDetail getPrincipal() {
        try {
            return (MyUserDetail) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
        } catch (Exception e) {
            return null;
        }
    }
}
