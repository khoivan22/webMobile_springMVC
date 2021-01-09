package vn.nlu.fit.springSecurity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import vn.nlu.fit.entity.UserEntity;

import java.util.Collection;
import java.util.Collections;

public class MyUserDetail implements UserDetails {

    private final UserEntity user;
    public MyUserDetail(UserEntity user) {
        this.user = user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority = new SimpleGrantedAuthority(user.getRole().getName());
        return Collections.singletonList(authority);
    }

    @Override
    public String getPassword() {
        return user.getPASSWORD();
    }

    @Override
    public String getUsername() {
        return user.getUSER_NAME();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
