package vn.nlu.fit.service;

import vn.nlu.fit.entity.SupplierEntity;

import java.util.List;
import java.util.Optional;

public interface SupplierService  {
    List<SupplierEntity> findAll();

    Optional<SupplierEntity> findById(String id);

    SupplierEntity save(SupplierEntity supplier);

    void delete(String[] ids);
}
