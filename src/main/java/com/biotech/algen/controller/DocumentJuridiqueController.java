package com.biotech.algen.controller;

import com.biotech.algen.model.DocumentJuridique;
import com.biotech.algen.model.MotCle_DocJuri;
import com.biotech.algen.repository.RgRepository;
import com.biotech.algen.service.DocumentJuridiqueService;
import com.biotech.algen.service.MotCle_DocJuriService;
import com.biotech.algen.service.RgService;
import com.biotech.algen.service.impl.FilesStorage_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;


@Controller
public class DocumentJuridiqueController {

    @Autowired
    DocumentJuridiqueService documentJuridiqueService;

    @Autowired
    RgRepository rgRepository;

    @Autowired
    RgService rgService;

    @Autowired
    MotCle_DocJuriService motCleDocJuriService;

    @Autowired
    FilesStorage_Service fileService;

    @RequestMapping(value = "/index_doc_jurid/{id}", method = RequestMethod.GET)
    public String indexDocJuri(Model model, @PathVariable Long id) {

        model.addAttribute("motsCles", new ArrayList<MotCle_DocJuri>());
        model.addAttribute("idDocJuri",id);

        if(documentJuridiqueService.findById(id) != null){
            model.addAttribute("motsCles", documentJuridiqueService.findById(id).getMotsCles());
        }
        return "index_doc_jurid";
    }

    @RequestMapping(value = "/index_doc_jurid", method = RequestMethod.POST)
    public String update_indexDocJuri(Model model, @RequestParam(value="motsCles[]") List<String> motsCles, @RequestParam(value = "id") long id) {

        ArrayList<MotCle_DocJuri> tabMotsCles = new ArrayList<MotCle_DocJuri>();
        for(String mot: motsCles){
            tabMotsCles.add(new MotCle_DocJuri(mot));
            motCleDocJuriService.save(new MotCle_DocJuri(mot));
        }

        DocumentJuridique docJurid = documentJuridiqueService.findById(id);
        docJurid.setMotsCles(tabMotsCles);
        documentJuridiqueService.update(docJurid);

        return "redirect:/lois";
    }

    @RequestMapping(value = "/lois", method = RequestMethod.GET)
    public String getAllLois(Model model) {
        model.addAttribute("lois",documentJuridiqueService.findAll());
        model.addAttribute("storageFolder", fileService.savingFolrerName);
        return "lois";
    }

    @RequestMapping(value = "/loi", method = RequestMethod.GET)
    public String addLoiForm(Model model) {
        model.addAttribute("rgs",rgRepository.findAll());
        model.addAttribute("loi", new DocumentJuridique());
        return "addLoi";
    }


    @RequestMapping(value = "/loi", method = RequestMethod.POST)
    public String addLoi(@Valid @ModelAttribute("loi") DocumentJuridique loi, @RequestParam(value = "file", required = false) MultipartFile file) {
        loi.setDefaultChemin_doc(fileService.getFileExtention(file.getOriginalFilename()));
        DocumentJuridique doc = documentJuridiqueService.save(loi);
        fileService.saveFile(file, loi.getChemin_doc());
        return "redirect:/index_doc_jurid/" + doc.getId();
    }


    @RequestMapping(value = "/updateLoi/{id}", method = RequestMethod.GET)
    public String updateLoi(Model model,@PathVariable Long id) {
        model.addAttribute("rgs",rgRepository.findAll());
        model.addAttribute("loi", documentJuridiqueService.findById(id));
        model.addAttribute("motsCles", documentJuridiqueService.findById(id).getMotsCles());
        model.addAttribute("storageFolder", fileService.savingFolrerName);
        return "updateLoi";
    }

    @RequestMapping(value = "/updateLoi", method = RequestMethod.POST)
    public String updatedLoi(
            @Valid @ModelAttribute("loi") DocumentJuridique loi, @RequestParam(value = "file", required = false) MultipartFile file) {

        String doc_path = documentJuridiqueService.findById(loi.getId()).getChemin_doc();
        loi.setChemin_doc(doc_path);
        documentJuridiqueService.update(loi);
        if(file != null){
            fileService.saveFile(file, doc_path);
        }

        return "redirect:/lois";
    }


    @RequestMapping(value = "/deleteLoi/{id}", method = RequestMethod.GET)
    public String deleteLoiById(@PathVariable Long id) {
        fileService.deleteFile(documentJuridiqueService.findById(id).getChemin_doc());
        documentJuridiqueService.removeById(id);
        return "redirect:/lois";
    }

    @RequestMapping(value = "/search_lois", method = RequestMethod.POST)
    public String search(Model model,@Valid @ModelAttribute("searchText") String searchText,
                         @Valid @ModelAttribute("searchType") int searchType){
        switch (searchType){
            case 0 :
                model.addAttribute("lois",documentJuridiqueService.findAllByKeyWord(searchText));
                break;
            case 1 :
                model.addAttribute("lois",documentJuridiqueService.findAllByFullText(searchText));
                break;
            case 2 :
                model.addAttribute("lois",documentJuridiqueService.findByRgName(searchText.toUpperCase()));
        }
        model.addAttribute("storageFolder", fileService.savingFolrerName);
        return "/lois";
    }
    

    @RequestMapping(value = "/filter_by_date", method = RequestMethod.POST)
    public String filterByDate(Model model,@Valid @ModelAttribute("dateDebut") Date dateDebut,@Valid @ModelAttribute("dateFin") Date dateFin){
        model.addAttribute("lois",documentJuridiqueService.findByDate_sortieBetween(dateDebut,dateFin));
        return "/lois";
    }

    @RequestMapping(value = "/filter_by_rg_type/{rgType}", method = RequestMethod.GET)
    public String filterByRgType(@PathVariable String type,Model model){
        switch (type){
            case "Faune":
                model.addAttribute("lois",documentJuridiqueService.findByRg_faune());
                break;
            case "Forest":
                model.addAttribute("lois",documentJuridiqueService.findByRg_forest());
                break;
            case "Marine":
                model.addAttribute("lois",documentJuridiqueService.findByRg_marine());
                break;
            case "MicroOrgan":
                model.addAttribute("lois",documentJuridiqueService.findByRg_micro_org());
                break;
            case "Agricol":
                model.addAttribute("lois",documentJuridiqueService.findByRg_alimagricol());

        }
        return "redirect:/lois";
    }
    
    
    @RequestMapping(value = "/affichage-lois", method = RequestMethod.GET)
    public String afficherLois(Model model) {
        model.addAttribute("lois",documentJuridiqueService.findAll());
        return "affichage-lois";
    }
    
    

}

