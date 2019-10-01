package com.biotech.algen.service;

import com.biotech.algen.model.Rg_marine;

import java.util.List;

public interface Rg_Marine_Service {

    Rg_marine addRg_marine(Rg_marine rg);

    Rg_marine findRg_marineById(Long id);

    List<Rg_marine> findAllRg_marine();

    Rg_marine updateRg_marine(Rg_marine rg);

    void deleteRg_marine(Rg_marine rg);

    void deleteRg_marineById(Long id);

}