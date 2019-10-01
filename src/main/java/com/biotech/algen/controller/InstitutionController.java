package com.biotech.algen.controller;

import com.biotech.algen.model.Domaine;
import com.biotech.algen.model.Institution;
import com.biotech.algen.model.Role;
import com.biotech.algen.model.User;
import com.biotech.algen.service.DomaineService;
import com.biotech.algen.service.impl.InstitutionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class InstitutionController {

    @Autowired
    private InstitutionService institutionService;

    @Autowired
    private DomaineService domaineService;

    @RequestMapping("/SlideInstitution")
    public String SlideInstitutions(Model model){

        List<Institution> insts = institutionService.listAll();
        model.addAttribute("institutions", insts);
        return "content-slideshow-view-institution";
    }

    @RequestMapping("/ListInstitution")
    public String listInstitutions(Model model, HttpSession session){
System.out.println(session.getAttribute("logged"));
        List<Institution> insts = institutionService.listAll();
        model.addAttribute("institutions", insts);
        return "liste-view-institution";
        //return "index_resource";
    }

    @RequestMapping("/ImageInstitution")
    public String ImageInstitutions(Model model){

        List<Institution> insts = institutionService.listAll();
        model.addAttribute("institutions", insts);
        return "content-image-view-institution";
    }

    @RequestMapping("page-info-institution/{id}")
    public String getInstitution(@PathVariable Long id, Model model){

        model.addAttribute("institution", institutionService.getById(Long.valueOf(id)));
        return "page-info-institution";
    }

    @RequestMapping(value = "/institutions", method = RequestMethod.GET)
    public String getAllInstitutions(Model model) {
        model.addAttribute("institutions", institutionService.findAll());
        model.addAttribute("domaines",domaineService.findAllDomaines());
        return "institutions";
    }

    @RequestMapping(value = "/institution", method = RequestMethod.GET)
    public String addLoiForm(Model model) {
        model.addAttribute("domaines",domaineService.findAllDomaines());
        model.addAttribute("institution", new Institution());
        return "addInstitution";
    }


    @RequestMapping(value = "/institution", method = RequestMethod.POST)
    public String addInstitution(@Valid @ModelAttribute Institution institution) {
        institutionService.save(institution);
        return "redirect:/institutions";
    }


    @RequestMapping(value = "/updateInstitution/{id}", method = RequestMethod.GET)
    public String updateInstitution(Model model,@PathVariable Long id) {
        model.addAttribute("domaines",domaineService.findAllDomaines());
        model.addAttribute("institution", institutionService.findById(id));
        return "updateInstitution";
    }

    @RequestMapping(value = "/updateInstitution", method = RequestMethod.POST)
    public String updatedInstitution(
            @Valid @ModelAttribute("institution") Institution institution) {
        institutionService.update(institution);
        return "redirect:/institutions";
    }

    @RequestMapping(value = "/deleteInstitution/{id}", method = RequestMethod.GET)
    public String deleteInstitutionById(@PathVariable Long id) {
        institutionService.removeById(id);
        return "redirect:/institutions";
    }

    @RequestMapping(value = "/search_institution", method = RequestMethod.POST)
    public String search_institution(Model model, @RequestParam(value = "nom",required = false) String nom, @RequestParam(value = "typeInstitution",required = false) String type,
                         @RequestParam(value = "domaines",required = false) List<Domaine> domaines) {
        System.out.print("test1");
        List<Institution> institutions = institutionService.findByNomAndTypeAndDomaines(nom,type,domaines);
        System.out.print(nom);
        System.out.print(institutions);
        model.addAttribute("institutions", institutions);

        model.addAttribute("domaines",domaineService.findAllDomaines());
        return "institutions";
    }
}
