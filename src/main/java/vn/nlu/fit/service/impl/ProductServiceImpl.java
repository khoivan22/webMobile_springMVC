package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.ProductEntity;
import vn.nlu.fit.repositories.ProductRepository;
import vn.nlu.fit.service.ProductService;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductRepository repository;

    @Override
    public List<ProductEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<ProductEntity> findById(String id) {
        return repository.findById(id);
    }

    @Override
    public ProductEntity save(ProductEntity product) {
        return repository.save(product);
    }

    @Override
    public void delete(String[] ids) {

    }

    @Override
    public List<ProductEntity> getTop10Star() {
        return repository.getTop10Star();
    }

    @Override
    public List<ProductEntity> getTop10Price() {
        return repository.getTop10Price();
    }

    @Override
    public List<ProductEntity> getTop10Sale() {
        return repository.getTop10Sale();
    }

    @Override
    public long count() {
        return repository.count();
    }

}
