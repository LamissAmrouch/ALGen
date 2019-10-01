package com.biotech.algen.service;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_faune;

import java.util.List;

public interface Rg_Faune_Service {

    Rg_faune addRg_faune(Rg_faune rg);

    Rg_faune findRg_fauneById(Long id);

    Rg_faune findRg_fauneByRg(Rg rg);

    List<Rg_faune> findAllRg_faune();

    Rg_faune updateRg_faune(Rg_faune rg);

    void deleteRg_faune(Rg_faune rg);

    void deleteRg_fauneById(Long id);

    void deleteRg_fauneByRg(Rg rg);
}