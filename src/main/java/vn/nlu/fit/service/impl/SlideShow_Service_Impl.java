package vn.nlu.fit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nlu.fit.entity.SlideShowEntity;
import vn.nlu.fit.repositories.SlideShowRepository;
import vn.nlu.fit.service.SlideShowService;

import java.util.List;
import java.util.Optional;

@Service
public class SlideShow_Service_Impl implements SlideShowService {
    @Autowired
    SlideShowRepository repository;

    @Override
    public List<SlideShowEntity> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<SlideShowEntity> findById(int id) {
        return repository.findById(id);
    }

    @Override
    public SlideShowEntity save(SlideShowEntity slide) {
        return repository.save(slide);
    }

    @Override
    public void delete(int[] ids) {
        for (Integer id:ids) {
            repository.deleteById(id);
        }
    }
}
