package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.SupplierEntity;

public interface SupplerRepository extends JpaRepository<SupplierEntity,String> {
}
