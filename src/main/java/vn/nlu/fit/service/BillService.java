package vn.nlu.fit.service;

import vn.nlu.fit.entity.BillEntity;

import java.util.List;
import java.util.Optional;

public interface BillService  {
    List<BillEntity> findAll();

    Optional<BillEntity> findById(int id);

    BillEntity save(BillEntity bill);

    void delete(int[] ids);
}
