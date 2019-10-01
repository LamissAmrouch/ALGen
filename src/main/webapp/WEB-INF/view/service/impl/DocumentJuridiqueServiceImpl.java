package com.biotech.algen.service.impl;

import com.biotech.algen.model.DocumentJuridique;
import com.biotech.algen.repository.DocumentJuridiqueRepository;
import com.biotech.algen.service.DocumentJuridiqueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DocumentJuridiqueServiceImpl implements DocumentJuridiqueService {


    @Autowired
    private DocumentJuridiqueRepository documentJuridiqueRepository;

    @Override
    public Iterable<DocumentJuridique> findAll() {
        return documentJuridiqueRepository.findAll();
    }

    @Override
    public DocumentJuridique save(DocumentJuridique documentJuridique) {
        return documentJuridiqueRepository.save(documentJuridique);
    }

    @Override
    public DocumentJuridique update(DocumentJuridique documentJuridique) {
        return documentJuridiqueRepository.save(documentJuridique);
    }

    @Override
    public DocumentJuridique findById(Long id) {
        return documentJuridiqueRepository.findById(id).orElse(null);
    }

    @Override
    public void removeById(Long id) {
        documentJuridiqueRepository.deleteById(id);
    }

    @Override
    public void remove(DocumentJuridique documentJuridique) {
        documentJuridiqueRepository.delete(documentJuridique);
    }
}
