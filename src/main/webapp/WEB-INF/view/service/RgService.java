package com.biotech.algen.service;

import com.biotech.algen.model.Rg;

import java.util.List;

public interface RgService {

    Rg addRg(Rg rg);

    Rg findRgById(Long id);

    List<Rg> findAllRg();

    Rg updateRg(Rg rg);

    void deleteRg(Rg rg);

    void deleteRgById(Long id);

}