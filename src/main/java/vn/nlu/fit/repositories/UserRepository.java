package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.UserEntity;

import javax.transaction.Transactional;

@Transactional
public interface UserRepository extends JpaRepository<UserEntity,String> {
}
