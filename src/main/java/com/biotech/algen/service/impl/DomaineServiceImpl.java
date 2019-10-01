package com.biotech.algen.service.impl;

import com.biotech.algen.model.Domaine;
import com.biotech.algen.repository.DomaineRepository;
import com.biotech.algen.service.DomaineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class DomaineServiceImpl implements DomaineService {

    @Autowired
    private DomaineRepository domaineRepository;

    @Override
    public List<Domaine> findAllDomaines() {
        return (List<Domaine>) domaineRepository.findAll();
    }
}
