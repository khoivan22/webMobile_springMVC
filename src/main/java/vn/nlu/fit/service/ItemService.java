package vn.nlu.fit.service;

import vn.nlu.fit.entity.ItemsEntity;

import java.util.List;
import java.util.Optional;

public interface ItemService {
    List<ItemsEntity> findAll();

    Optional<ItemsEntity> findById(String id);

    ItemsEntity save(ItemsEntity item);

    void delete(String[] ids);
}
