package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_faune;
import com.biotech.algen.repository.RgFauneRepository;
import com.biotech.algen.service.Rg_Faune_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Rg_Faune_ServiceImpl implements Rg_Faune_Service {

    @Autowired
    private RgFauneRepository rgRepository;

    @Override
    public Rg_faune addRg_faune(Rg_faune rg) {
        return rgRepository.save(rg);
    }

    @Override
    public Rg_faune findRg_fauneById(Long id) {
        return rgRepository.findById(id).get();
    }

    @Override
    public Rg_faune findRg_fauneByRg(Rg rg) {
        return rgRepository.findRg_fauneByRg(rg);
    }

    @Override
    public List<Rg_faune> findAllRg_faune() {
        List<Rg_faune> rgs = new ArrayList<>();
        rgRepository.findAll().forEach(rgs::add);
        return rgs;
    }

    @Override
    public Rg_faune updateRg_faune(Rg_faune rg) {
        return rgRepository.save(rg);
    }

    @Override
    public void deleteRg_faune(Rg_faune rg) {
         rgRepository.delete(rg);
    }

    @Override
    public void deleteRg_fauneById(Long id) {
        rgRepository.deleteById(id);
    }

    @Override
    public void deleteRg_fauneByRg(Rg rg) {
        rgRepository.deleteRg_fauneByRg(rg);
    }
}
