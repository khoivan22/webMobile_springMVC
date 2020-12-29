package vn.nlu.fit.service;

import vn.nlu.fit.entity.ConfigurationEntity;
import vn.nlu.fit.entity.ItemsEntity;

import java.util.List;
import java.util.Optional;

public interface ConfigurationService {

    List<ConfigurationEntity> findAll();

    Optional<ConfigurationEntity> findById(String id);

    ConfigurationEntity save(ConfigurationEntity configuration);

    void delete(String[] ids);
}
