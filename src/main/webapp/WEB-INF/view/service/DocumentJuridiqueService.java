package com.biotech.algen.service;

import com.biotech.algen.model.DocumentJuridique;

public interface DocumentJuridiqueService {

    Iterable<DocumentJuridique> findAll();

    DocumentJuridique save(DocumentJuridique documentJuridique);

    DocumentJuridique update(DocumentJuridique documentJuridique);

    DocumentJuridique findById(Long id);

    void removeById(Long id);

    void remove(DocumentJuridique documentJuridique);

}
