package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.SupplierEntity;
import vn.nlu.fit.repositories.SupplerRepository;
import vn.nlu.fit.service.SupplierService;

import java.util.List;
import java.util.Optional;

@Service
public class SupplierServiceImpl implements SupplierService {
    @Autowired
    private SupplerRepository repository;

    @Override
    public List<SupplierEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<SupplierEntity> findById(String id) {
        return repository.findById(id);
    }

    @Override
    public SupplierEntity save(SupplierEntity supplier) {

        return repository.save(supplier);
    }

    @Override
    public void delete(String[] ids) {
        for (String id: ids) {
            repository.deleteById(id);
        }
    }
}
