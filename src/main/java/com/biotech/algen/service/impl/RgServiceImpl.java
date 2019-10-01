package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg;
import com.biotech.algen.repository.*;
import com.biotech.algen.service.RgService;
import com.biotech.algen.service.Rg_Faune_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RgServiceImpl implements RgService {

    @Autowired
    private RgRepository rgRepository;

    @Autowired
    private RgFauneRepository rg_faune_repository;

    @Autowired
    private RgMarineRepository rgMarineRepository;

    @Autowired
    private RgForestRepository rgForestRepository;

    @Autowired
    private RgMicroOrgRepository rgMicroOrgRepository;

    @Autowired
    private RgAlimagricolRepository rgAlimagricolRepository;

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

    @Override
    public List<Rg> findByNomOrNomscientAndRgType(String nom, String rgType) {
        List<Rg> rgs = new ArrayList<Rg>();
        switch (rgType){
            case "Rg":
                rgs = rgRepository.findByNomOrNomscientAll(nom.toUpperCase());
                break;
            case "Rg_faune":
                rgs = rg_faune_repository.findRgByNomOrNomscientAll(nom.toUpperCase());
                break;
            case "Rg_forest":
                rgs = rgForestRepository.findRgByNomOrNomscientAll(nom.toUpperCase());
                break;
            case "Rg_marine":
                rgs = rgMarineRepository.findRgByNomOrNomscientAll(nom.toUpperCase());
                break;
            case "Rg_alimagricol":
                rgs = rgAlimagricolRepository.findRgByNomOrNomscientAll(nom.toUpperCase());
                break;
            case "Rg_micro_org":
                rgs = rgMicroOrgRepository.findRgByNomOrNomscientAll(nom.toUpperCase());

        }
        return rgs;
    }
}
