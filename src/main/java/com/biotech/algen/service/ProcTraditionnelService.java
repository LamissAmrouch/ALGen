package com.biotech.algen.service;

import com.biotech.algen.model.ProcTraditionnel;

import java.util.List;

public interface ProcTraditionnelService {

    ProcTraditionnel addProcTraditionnel(ProcTraditionnel rg);

    ProcTraditionnel findProcTraditionnelById(Long id);

    List<ProcTraditionnel> findAllProcTraditionnel();

    ProcTraditionnel updateProcTraditionnel(ProcTraditionnel rg);

    void deleteProcTraditionnel(ProcTraditionnel rg);

    void deleteProcTraditionnelById(Long id);

    List<ProcTraditionnel> findByRgNomOrNomScientifique(String nom);
}
