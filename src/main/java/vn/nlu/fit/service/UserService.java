package vn.nlu.fit.service;

import vn.nlu.fit.entity.UserEntity;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<UserEntity> findAll();

    Optional<UserEntity> findById(String id);

    UserEntity save(UserEntity user);

    void delete(String[] ids);
}
