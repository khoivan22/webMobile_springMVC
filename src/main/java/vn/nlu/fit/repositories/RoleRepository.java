package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.RoleEntity;

public interface RoleRepository extends JpaRepository<RoleEntity,Long> {
}
