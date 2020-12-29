package vn.nlu.fit.service;

import vn.nlu.fit.entity.ProductEntity;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<ProductEntity> findAll();

    Optional<ProductEntity> findById(String id);

    ProductEntity save(ProductEntity product);

    void delete(String[] ids);

    List<ProductEntity> getTop10Star();

    List<ProductEntity> getTop10Price();

    List<ProductEntity> getTop10Sale();

    long count();
}
