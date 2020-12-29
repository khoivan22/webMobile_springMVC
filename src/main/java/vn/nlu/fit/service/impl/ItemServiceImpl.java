package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.ItemsEntity;
import vn.nlu.fit.repositories.ItemsRepository;
import vn.nlu.fit.service.ItemService;

import java.util.List;
import java.util.Optional;

@Service
public class ItemServiceImpl implements ItemService {
    @Autowired
    private ItemsRepository repository;

    @Override
    public List<ItemsEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<ItemsEntity> findById(String id) {
        return repository.findById(id);
    }

    @Override
    public ItemsEntity save(ItemsEntity item) {
        return repository.save(item);
    }

    @Override
    public void delete(String[] ids) {
        for (String id : ids)
            repository.deleteById(id);
    }
}
