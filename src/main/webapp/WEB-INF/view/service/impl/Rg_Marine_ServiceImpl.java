package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg_marine;
import com.biotech.algen.service.Rg_Marine_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Rg_Marine_ServiceImpl implements Rg_Marine_Service {

    @Autowired
    private Rg_Marine_Repository rgRepository;

    @Override
    public Rg_marine addRg_marine(Rg_marine rg) {
        return rgRepository.save(rg);
    }

    @Override
    public Rg_marine findRg_marineById(Long id) {
        return rgRepository.findById(id).get();
    }

    @Override
    public List<Rg_marine> findAllRg_marine() {
        List<Rg_marine> rgs = new ArrayList<>();
        rgRepository.findAll().forEach(rgs::add);
        return rgs;
    }

    @Override
    public Rg_marine updateRg_marine(Rg_marine rg) {
        return rgRepository.save(rg);
    }

    @Override
    public void deleteRg_marine(Rg_marine rg) {
         rgRepository.delete(rg);
    }

    @Override
    public void deleteRg_marineById(Long id) {
        rgRepository.deleteById(id);
    }
}
