package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.SlideShowEntity;

public interface SlideShowRepository extends JpaRepository<SlideShowEntity, Integer> {
}
