package com.biotech.algen.service;

import com.biotech.algen.model.Domaine;
import com.biotech.algen.model.Institution;

import java.util.Collection;
import java.util.List;

public interface InstitutionServiceInterface {

    
    public List<Institution> listAll();
    
    Institution getById(Long id);

    Iterable<Institution> findAll();

    Institution save(Institution institution);

    Institution update(Institution Institution);

    Institution findById(Long id);

    void removeById(Long id);

    void remove(Institution institution);

    List<Institution> findByNomAndTypeAndDomaines(String nom, String type, List<Domaine> domaines);


}
