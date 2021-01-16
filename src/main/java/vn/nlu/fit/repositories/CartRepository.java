package vn.nlu.fit.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.CartEntity;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.entity.UserEntity;

import java.util.List;

public interface CartRepository extends JpaRepository<CartEntity,Long> {

    List<CartEntity> findByUser(UserEntity user);

    List<CartEntity> findByUserAndProduct(UserEntity user, ProductEntity product);

    void deleteAllByUser(UserEntity user);

    void deleteAllByProduct(ProductEntity product);
}
