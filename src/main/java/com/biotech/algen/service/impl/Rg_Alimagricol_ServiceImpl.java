package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_alimagricol;
import com.biotech.algen.repository.RgAlimagricolRepository;
import com.biotech.algen.service.Rg_AlimAgricol_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Rg_Alimagricol_ServiceImpl implements Rg_AlimAgricol_Service {

    @Autowired
    private RgAlimagricolRepository rgRepository;

    @Override
    public Rg_alimagricol addRg_alimagricol(Rg_alimagricol rg) {
        return rgRepository.save(rg);
    }

    @Override
    public Rg_alimagricol findRg_alimagricolById(Long id) {
        return rgRepository.findById(id).get();
    }

    @Override
    public Rg_alimagricol findRg_alimagricolByRg(Rg rg) {
        return rgRepository.findRg_alimagricolByRg(rg);
    }

    @Override
    public List<Rg_alimagricol> findAllRg_alimagricol() {
        List<Rg_alimagricol> rgs = new ArrayList<>();
        rgRepository.findAll().forEach(rgs::add);
        return rgs;
    }

    @Override
    public Rg_alimagricol updateRg_alimagricol(Rg_alimagricol rg) {
        return rgRepository.save(rg);
    }

    @Override
    public void deleteRg_alimagricol(Rg_alimagricol rg) {
         rgRepository.delete(rg);
    }

    @Override
    public void deleteRg_alimagricolById(Long id) {
        rgRepository.deleteById(id);
    }

    @Override
    public void deleteRg_alimagricolByRg(Rg rg) {
        rgRepository.deleteRg_alimagricolByRg(rg);
    }
}
