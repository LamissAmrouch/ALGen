package com.biotech.algen.service.impl;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_micro_org;
import com.biotech.algen.repository.RgMicroOrgRepository;
import com.biotech.algen.service.Rg_Micro_Org_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Rg_Micro_Org_ServiceImpl implements Rg_Micro_Org_Service {

    @Autowired
    private RgMicroOrgRepository rgRepository;

    @Override
    public Rg_micro_org addRg_micro_org(Rg_micro_org rg) {
        return rgRepository.save(rg);
    }

    @Override
    public Rg_micro_org findRg_micro_orgById(Long id) {
        return rgRepository.findById(id).get();
    }

    @Override
    public Rg_micro_org findRg_micro_orgByRg(Rg rg) {
        return rgRepository.findRg_micro_orgByRg(rg);
    }

    @Override
    public List<Rg_micro_org> findAllRg_micro_org() {
        List<Rg_micro_org> rgs = new ArrayList<>();
        rgRepository.findAll().forEach(rgs::add);
        return rgs;
    }

    @Override
    public Rg_micro_org updateRg_micro_org(Rg_micro_org rg) {
        return rgRepository.save(rg);
    }

    @Override
    public void deleteRg_micro_org(Rg_micro_org rg) {
         rgRepository.delete(rg);
    }

    @Override
    public void deleteRg_micro_orgById(Long id) {
        rgRepository.deleteById(id);
    }

    @Override
    public void deleteRg_micro_orgByRg(Rg rg) {
        rgRepository.deleteRg_micro_orgByRg(rg);
    }
}
