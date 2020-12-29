package vn.nlu.fit.service;

import vn.nlu.fit.entity.SlideShowEntity;

import java.util.List;
import java.util.Optional;

public interface SlideShowService {
    List<SlideShowEntity> findAll();

    Optional<SlideShowEntity> findById(int id);

    SlideShowEntity save(SlideShowEntity slide);

    void delete(int[] ids);
}
