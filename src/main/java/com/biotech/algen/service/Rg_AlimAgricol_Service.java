package com.biotech.algen.service;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_alimagricol;

import java.util.List;

public interface Rg_AlimAgricol_Service {

    Rg_alimagricol addRg_alimagricol(Rg_alimagricol rg);

    Rg_alimagricol findRg_alimagricolById(Long id);

    Rg_alimagricol findRg_alimagricolByRg(Rg rg);

    List<Rg_alimagricol> findAllRg_alimagricol();

    Rg_alimagricol updateRg_alimagricol(Rg_alimagricol rg);

    void deleteRg_alimagricol(Rg_alimagricol rg);

    void deleteRg_alimagricolById(Long id);

    void deleteRg_alimagricolByRg(Rg rg);

}