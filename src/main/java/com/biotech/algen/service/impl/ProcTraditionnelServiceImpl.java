package com.biotech.algen.service.impl;

import com.biotech.algen.model.ProcTraditionnel;
import com.biotech.algen.repository.ProcTraditionnelRepository;
import com.biotech.algen.service.ProcTraditionnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProcTraditionnelServiceImpl implements ProcTraditionnelService {

    @Autowired
    private ProcTraditionnelRepository procTraditionnelRepository;

    @Override
    public ProcTraditionnel addProcTraditionnel(ProcTraditionnel procTraditionnel) {
        return procTraditionnelRepository.save(procTraditionnel);
    }

    @Override
    public ProcTraditionnel findProcTraditionnelById(Long id) {
        return procTraditionnelRepository.findById(id).get();
    }

    @Override
    public List<ProcTraditionnel> findAllProcTraditionnel() {
        List<ProcTraditionnel> procs = new ArrayList<>();
        procTraditionnelRepository.findAll().forEach(procs::add);
        return procs;
    }

    @Override
    public ProcTraditionnel updateProcTraditionnel(ProcTraditionnel proc) {
        return procTraditionnelRepository.save(proc);
    }

    @Override
    public void deleteProcTraditionnel(ProcTraditionnel proc) {

        procTraditionnelRepository.delete(proc);
    }

    @Override
    public void deleteProcTraditionnelById(Long id) {
        procTraditionnelRepository.deleteById(id);
    }

    @Override
    public List<ProcTraditionnel> findByRgNomOrNomScientifique(String nom) {
        return procTraditionnelRepository.findByRgNomOrNomScientifique(nom.toUpperCase());
    }
}
