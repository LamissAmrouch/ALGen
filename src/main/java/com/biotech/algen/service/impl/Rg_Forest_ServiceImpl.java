package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_forest;
import com.biotech.algen.repository.RgForestRepository;
import com.biotech.algen.service.Rg_Forest_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Rg_Forest_ServiceImpl implements Rg_Forest_Service {

    @Autowired
    private RgForestRepository rgRepository;

    @Override
    public Rg_forest addRg_forest(Rg_forest rg) {
        return rgRepository.save(rg);
    }

    @Override
    public Rg_forest findRg_forestById(Long id) {
        return rgRepository.findById(id).get();
    }

    @Override
    public Rg_forest findRg_forestByRg(Rg rg) {
        return rgRepository.findRg_forestByRg(rg);
    }

    @Override
    public List<Rg_forest> findAllRg_forest() {
        List<Rg_forest> rgs = new ArrayList<>();
        rgRepository.findAll().forEach(rgs::add);
        return rgs;
    }

    @Override
    public Rg_forest updateRg_forest(Rg_forest rg) {
        return rgRepository.save(rg);
    }

    @Override
    public void deleteRg_forest(Rg_forest rg) {
         rgRepository.delete(rg);
    }

    @Override
    public void deleteRg_forestById(Long id) {
        rgRepository.deleteById(id);
    }

    @Override
    public void deleteRg_forestByRg(Rg rg) {
        rgRepository.deleteRg_forestByRg(rg);
    }
}
