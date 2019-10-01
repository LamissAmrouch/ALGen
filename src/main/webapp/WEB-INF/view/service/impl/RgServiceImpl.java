package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.user;
import com.biotech.algen.repository.RgRepository;
import com.biotech.algen.service.RgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RgServiceImpl implements RgService {

    @Autowired
    private RgRepository rgRepository;

    @Override
    public Rg addRg(Rg rg) {
        return rgRepository.save(rg);
    }

    @Override
    public Rg findRgById(Long id) {
        return rgRepository.findById(id).get();
    }

    @Override
    public List<Rg> findAllRg() {
        List<Rg> rgs = new ArrayList<Rg>();
        rgRepository.findAll().forEach(rgs::add);
        return rgs;
    }

    @Override
    public Rg updateRg(Rg rg) {
        return rgRepository.save(rg);
    }

    @Override
    public void deleteRg(Rg rg) {
         rgRepository.delete(rg);
    }

    @Override
    public void deleteRgById(Long id) {
        rgRepository.deleteById(id);
    }
}
