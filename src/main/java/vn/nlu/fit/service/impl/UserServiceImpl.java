package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.UserEntity;
import vn.nlu.fit.repositories.UserRepository;
import vn.nlu.fit.service.UserService;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository repository;


    @Override
    public List<UserEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<UserEntity> findById(String id) {
        return repository.findById(id);
    }

    @Override
    public UserEntity save(UserEntity user) {
        return repository.save(user);
    }

    @Override
    public void delete(String[] ids) {
        for (String id : ids)
            repository.deleteById(id);
    }
}

