package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.AddressEntity;

public interface AddressRepository extends JpaRepository<AddressEntity, Long> {
}
