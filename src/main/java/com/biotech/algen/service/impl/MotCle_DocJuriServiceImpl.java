package com.biotech.algen.service.impl;

import com.biotech.algen.model.MotCle_DocJuri;
import com.biotech.algen.repository.MotCle_DocJuriRepository;
import com.biotech.algen.service.MotCle_DocJuriService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MotCle_DocJuriServiceImpl implements MotCle_DocJuriService {

    @Autowired
    private MotCle_DocJuriRepository motCle_docJuriRepository;

    @Override
    public List<MotCle_DocJuri> findAll() {
        return (List<MotCle_DocJuri>) motCle_docJuriRepository.findAll();
    }

    @Override
    public MotCle_DocJuri save(MotCle_DocJuri motCle_docJuri) {
        return motCle_docJuriRepository.save(motCle_docJuri);
    }

    @Override
    public MotCle_DocJuri update(MotCle_DocJuri motCle_docJuri) {
        return motCle_docJuriRepository.save(motCle_docJuri);
    }

    @Override
    public List<MotCle_DocJuri> findById(String motCle) {
        return  motCle_docJuriRepository.findByIdUpper(motCle.toUpperCase());
    }

    @Override
    public void removeById(String motCle) {
        motCle_docJuriRepository.deleteById(motCle);
    }

    @Override
    public void remove(MotCle_DocJuri motCle_docJuri) {
        motCle_docJuriRepository.delete(motCle_docJuri);
    }
}
