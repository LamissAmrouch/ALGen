package com.biotech.algen.service;

import com.biotech.algen.model.Classification;

import java.util.List;

public interface ClassificationService {

    Classification addClassification(Classification classification);

    Classification findClassificationById(Long id);

    List<Classification> findAllClassification();

    Classification updateClassification(Classification classification);

    void deleteClassification(Classification classification);

    void deleteClassificationById(Long id);
}
