package vn.nlu.fit.service;

import vn.nlu.fit.entity.CommentEntity;

import java.util.List;
import java.util.Optional;

public interface CommentService {
    List<CommentEntity> findAll();

    Optional<CommentEntity> findById(int id);

    CommentEntity save(CommentEntity comment);

    void delete(int[] ids);
}
