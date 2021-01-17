package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.DetailBillEntity;

public interface DetailBillRepository extends JpaRepository<DetailBillEntity,Long> {

    void  deleteByBill_Id(long id);
}
