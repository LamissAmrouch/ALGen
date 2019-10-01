package com.biotech.algen.service;

import com.biotech.algen.model.Institution;

import java.util.List;

public interface InstitutionServiceInterface {

    List<Institution> listAll();

    Institution getById(Long id);

    Iterable<Institution> findAll();

    Institution save(Institution institution);

    Institution update(Institution Institution);

    Institution findById(Long id);

    void removeById(Long id);

    void remove(Institution institution);


}
