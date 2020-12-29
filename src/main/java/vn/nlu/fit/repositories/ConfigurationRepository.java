package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.ConfigurationEntity;

public interface ConfigurationRepository extends JpaRepository<ConfigurationEntity,String> {

}
