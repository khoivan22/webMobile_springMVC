package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.CommentEntity;
import vn.nlu.fit.repositories.CommentRepository;
import vn.nlu.fit.service.CommentService;

import java.util.List;
import java.util.Optional;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    CommentRepository repository;


    @Override
    public List<CommentEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<CommentEntity> findById(int id) {
        return repository.findById(id);
    }

    @Override
    public CommentEntity save(CommentEntity comment) {
        return repository.save(comment);
    }

    @Override
    public void delete(int[] ids) {
        for (int i = 0; i < ids.length; i++) {
            repository.deleteById(ids[i]);
        }
    }
}
