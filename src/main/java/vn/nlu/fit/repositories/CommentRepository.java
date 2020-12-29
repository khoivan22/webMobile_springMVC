package vn.nlu.fit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.nlu.fit.entity.CommentEntity;

public interface CommentRepository  extends JpaRepository<CommentEntity,Integer> {
}
