package com.biotech.algen.service.impl;

import com.biotech.algen.model.Domaine;
import com.biotech.algen.model.Institution;
import com.biotech.algen.model.Role;
import com.biotech.algen.repository.InstitutionRepository;
import com.biotech.algen.service.InstitutionServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class InstitutionService implements InstitutionServiceInterface {

    @Autowired
    private InstitutionRepository institutionRepository;


    @Override
    public List<Institution> listAll() {
        List<Institution> institutions = new ArrayList<>();
        institutionRepository.findAll().forEach(institutions::add); //fun with Java 8
        return institutions;
    }

    @Override
    public Institution getById(Long id) {
        return institutionRepository.findById(id).orElse(null);
    }

    @Override
    public Iterable<Institution> findAll() {
        return institutionRepository.findAll();
    }

    @Override
    public Institution save(Institution institution) {
        return institutionRepository.save(institution);
    }

    @Override
    public Institution update(Institution institution) {
        return institutionRepository.save(institution);
    }

    @Override
    public Institution findById(Long id) {
        return institutionRepository.findById(id).orElse(null);
    }

    @Override
    public void removeById(Long id) {
        institutionRepository.deleteById(id);
    }

    @Override
    public void remove(Institution institution) {
        institutionRepository.delete(institution);
    }

    @Override
    public List<Institution> findByNomAndTypeAndDomaines(String nom, String type, List<Domaine> domaines) {
        boolean impty = false;
        Domaine d = domaines.get(0);
        if(d == null){
            impty = true;
        }
        return institutionRepository.findByNomAndTypeAndDomaines(nom.toUpperCase(),type.toUpperCase(),domaines, impty);
    }
}
