package com.biotech.algen.service;

import com.biotech.algen.model.MotCle_DocJuri;

import java.util.List;


public interface MotCle_DocJuriService {
    List<MotCle_DocJuri> findAll();

    MotCle_DocJuri save(MotCle_DocJuri motCle_docJuri);

    MotCle_DocJuri update(MotCle_DocJuri motCle_docJuri);

    List<MotCle_DocJuri> findById(String motCle);

    void removeById(String motCle);

    void remove(MotCle_DocJuri motCle_docJuri);
}
