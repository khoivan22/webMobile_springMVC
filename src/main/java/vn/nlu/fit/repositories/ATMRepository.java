package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.ATMEntity;

public interface ATMRepository  extends JpaRepository<ATMEntity,Integer>{
}
