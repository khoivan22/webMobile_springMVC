package vn.nlu.fit.springSecurity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.UserEntity;
import vn.nlu.fit.repositories.UserRepository;

import java.util.Optional;

@Service
public class MyUserDetailService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        Optional<UserEntity> user = userRepository.findById(userName);
        if (!user.isPresent()) {
            throw new UsernameNotFoundException("Could not find user");
        }

        return new MyUserDetail(user.get());
    }
}
