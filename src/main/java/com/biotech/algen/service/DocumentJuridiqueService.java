package com.biotech.algen.service;

import com.biotech.algen.model.DocumentJuridique;
import com.biotech.algen.model.Rg;

import java.sql.Date;
import java.util.List;

public interface DocumentJuridiqueService {

    List<DocumentJuridique> findAll();

    DocumentJuridique save(DocumentJuridique documentJuridique);

    DocumentJuridique update(DocumentJuridique documentJuridique);

    DocumentJuridique findById(Long id);

    void removeById(Long id);

    void remove(DocumentJuridique documentJuridique);

    List<DocumentJuridique> findAllByKeyWord(String motCle);

    List<DocumentJuridique> findAllByFullText(String fullText);

    Boolean existsInDocument(String text, DocumentJuridique documentJuridique);

    List<DocumentJuridique> findAllBilingue(String text);


    List<DocumentJuridique> findByDate_sortieBetween(Date d1, Date d2);

    List<DocumentJuridique> findByDate_sortie(Date date_sortie);

    List<DocumentJuridique> findByRgName(String name);

    public List<DocumentJuridique> findByRg_faune();

    public List<DocumentJuridique> findByRg_forest();

    public List<DocumentJuridique> findByRg_marine();

    public List<DocumentJuridique> findByRg_alimagricol();

    public List<DocumentJuridique> findByRg_micro_org();


}
