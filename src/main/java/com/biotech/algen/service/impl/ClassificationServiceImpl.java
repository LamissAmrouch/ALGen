package com.biotech.algen.service.impl;

import com.biotech.algen.model.Classification;
import com.biotech.algen.model.ProcTraditionnel;
import com.biotech.algen.repository.ClassificationRepository;
import com.biotech.algen.repository.ProcTraditionnelRepository;
import com.biotech.algen.service.ClassificationService;
import com.biotech.algen.service.ProcTraditionnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ClassificationServiceImpl implements ClassificationService {

    @Autowired
    private ClassificationRepository classificationRepository;

    @Override
    public Classification addClassification(Classification classification) {
        return classificationRepository.save(classification);
    }

    @Override
    public Classification findClassificationById(Long id) {
        return classificationRepository.findById(id).get();
    }

    @Override
    public List<Classification> findAllClassification() {
        List<Classification> classifications = new ArrayList<>();
        classificationRepository.findAll().forEach(classifications::add);
        return classifications;
    }

    @Override
    public Classification updateClassification(Classification classification) {
        return classificationRepository.save(classification);
    }

    @Override
    public void deleteClassification(Classification classification) {
        classificationRepository.delete(classification);
    }

    @Override
    public void deleteClassificationById(Long id) {
        classificationRepository.deleteById(id);
    }
}
