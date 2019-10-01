package com.biotech.algen.service;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_micro_org;

import java.util.List;

public interface Rg_Micro_Org_Service {

    Rg_micro_org addRg_micro_org(Rg_micro_org rg);

    Rg_micro_org findRg_micro_orgById(Long id);

    Rg_micro_org findRg_micro_orgByRg(Rg rg);

    List<Rg_micro_org> findAllRg_micro_org();

    Rg_micro_org updateRg_micro_org(Rg_micro_org rg);

    void deleteRg_micro_org(Rg_micro_org rg);

    void deleteRg_micro_orgById(Long id);

    void deleteRg_micro_orgByRg(Rg rg);
}