package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.BillEntity;
import vn.nlu.fit.repositories.BillRepository;
import vn.nlu.fit.service.BillService;

import java.util.List;
import java.util.Optional;

@Service
public class BillServiceImpl implements BillService {

    @Autowired
    BillRepository repository;

    @Override
    public List<BillEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<BillEntity> findById(int id) {
        return repository.findById(id);
    }

    @Override
    public BillEntity save(BillEntity bill) {
        return repository.save(bill);
    }

    @Override
    public void delete(int[] ids) {
        for (int id : ids) {
            repository.deleteById(id);
        }
    }
}
