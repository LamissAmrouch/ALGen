package com.biotech.algen.service.impl;

import com.biotech.algen.model.DocumentJuridique;
import com.biotech.algen.model.MotCle_DocJuri;
import com.biotech.algen.model.Rg;
import com.biotech.algen.repository.DocumentJuridiqueRepository;

import com.biotech.algen.service.DocumentJuridiqueService;
import com.biotech.algen.service.MotCle_DocJuriService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

@Service
@Transactional
public class DocumentJuridiqueServiceImpl implements DocumentJuridiqueService {

    @Autowired
    private DocumentJuridiqueRepository documentJuridiqueRepository;

    @Autowired
    private MotCle_DocJuriService motCleDocJuriService;

    @Autowired
    private  OCR_Service ocrService;

    @Autowired
    private MicrosoftFormatFiles_Service microsoftFormatFilesService;

    @Autowired
    private FilesStorage_Service filesStorage_service;

    @Override
    public List<DocumentJuridique> findAll() {
        return (List<DocumentJuridique>) documentJuridiqueRepository.findAll();
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

    @Override
    public List<DocumentJuridique> findAllByKeyWord(String motCle) {
        List<DocumentJuridique> docs = new ArrayList<DocumentJuridique>();
        List<MotCle_DocJuri> motCle_docJuri = motCleDocJuriService.findById(motCle);
        if(motCle_docJuri != null){
            docs = motCle_docJuri.get(0).getDocs();
            for(int i = 1; i < motCle_docJuri.size(); i++){
                docs.addAll(motCle_docJuri.get(i).getDocs());
            }
        }

        return docs;
    }

    @Override
    public List<DocumentJuridique> findAllByFullText(String fullText) {
        List<DocumentJuridique> listDocJuri = findAll();
        List<DocumentJuridique> results = new ArrayList<DocumentJuridique>();
        for (DocumentJuridique doc: listDocJuri
        ) {
            if(existsInDocument(fullText,doc)){results.add(doc);}
        }
        return results;
    }

    @Override
    public Boolean existsInDocument(String text, DocumentJuridique documentJuridique) {
        String documentText="";
        String filePath = filesStorage_service.savingPath +  documentJuridique.getChemin_doc();

        if(microsoftFormatFilesService.isWordFile(filePath)){
            documentText = microsoftFormatFilesService.wordFileToString(filePath);
        }else{
            documentText = ocrService.ocr(filePath);
        }

        return documentText.contains(text);
    }

    @Override
    public List<DocumentJuridique> findAllBilingue(String text) {

        return null;
    }

    @Override
    public List<DocumentJuridique> findByRgName(String name) {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findByRgName(name);
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByRg_faune() {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findByRg_faune();
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByRg_forest() {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findByRg_forest();
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByRg_marine() {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findByRg_marine();
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByRg_alimagricol() {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findByRg_alimagricol();
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByRg_micro_org() {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findByRg_micro_org();
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByDate_sortieBetween(Date dateStart, Date dateEnd) {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findAllByDate_sortieBetween(dateStart,dateEnd);
        return listFiltered;
    }

    @Override
    public List<DocumentJuridique> findByDate_sortie(Date date_sortie) {
        List<DocumentJuridique> listFiltered = documentJuridiqueRepository.findAllByDate_sortie(date_sortie);
        return listFiltered;
    }


}
