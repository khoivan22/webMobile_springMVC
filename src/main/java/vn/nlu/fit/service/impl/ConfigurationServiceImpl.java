package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.ConfigurationEntity;
import vn.nlu.fit.repositories.ConfigurationRepository;
import vn.nlu.fit.service.ConfigurationService;

import java.util.List;
import java.util.Optional;

@Service
public class ConfigurationServiceImpl implements ConfigurationService {

    @Autowired
    ConfigurationRepository repository;

    @Override
    public List<ConfigurationEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<ConfigurationEntity> findById(String id) {
        return repository.findById(id);
    }

    @Override
    public ConfigurationEntity save(ConfigurationEntity configuration) {
        return repository.save(configuration);
    }

    @Override
    public void delete(String[] ids) {
        for (String id: ids) {
            repository.deleteById(id);
        }
    }
}
