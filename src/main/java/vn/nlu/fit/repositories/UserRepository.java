package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity,String> {
}
