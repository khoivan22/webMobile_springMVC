package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.ItemsEntity;

public interface ItemsRepository extends JpaRepository<ItemsEntity,String> {
}
