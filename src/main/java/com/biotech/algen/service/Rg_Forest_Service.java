package com.biotech.algen.service;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_forest;

import java.util.List;

public interface Rg_Forest_Service {

    Rg_forest addRg_forest(Rg_forest rg);

    Rg_forest findRg_forestById(Long id);

    Rg_forest findRg_forestByRg(Rg rg);

    List<Rg_forest> findAllRg_forest();

    Rg_forest updateRg_forest(Rg_forest rg);

    void deleteRg_forest(Rg_forest rg);

    void deleteRg_forestById(Long id);

    void deleteRg_forestByRg(Rg rg);
}