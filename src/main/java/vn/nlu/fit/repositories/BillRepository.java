package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.BillEntity;

public interface BillRepository extends JpaRepository<BillEntity,Long> {
}
