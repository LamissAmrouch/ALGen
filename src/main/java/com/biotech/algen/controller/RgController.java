package com.biotech.algen.controller;

import com.biotech.algen.model.*;
import com.biotech.algen.repository.*;
import com.biotech.algen.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.text.ParseException;
import java.util.*;

@Controller
public class RgController {

    @Autowired
    private ClassificationService classificationService;

    @Autowired
    private RgService rgService;

    @Autowired
    private ImageService imageService;

    @Autowired
    private RgMicroOrgRepository rgMicroOrgRepository;

    @Autowired
    private Rg_Forest_Service rg_forest_service;

    @Autowired
    private Rg_AlimAgricol_Service rg_alimAgricol_service;

    @Autowired
    private Rg_Marine_Service rg_marine_service;

    @Autowired
    private Rg_Faune_Service rg_faune_service;

    @Autowired
    private Rg_Micro_Org_Service rg_micro_org_service;

    public Boolean getEnProduction(@RequestParam Map<String, String> body){
        if(body.get("en_production").compareTo("1")==0){
            return true;
        }
        else{
            return false;
        }
    }

    public Boolean getEstProtege(@RequestParam Map<String, String> body){
        if(body.get("est_protege").compareTo("1")==0){
            return true;
        }
        else{
            return false;
        }
    }

    public Boolean getEstNocif(@RequestParam Map<String, String> body){
        if(body.get("est_Nocif").compareTo("1")==0){
            return true;
        }
        else{
            return false;
        }
    }

    public long getLastId(){
        List<Rg> rgs = rgService.findAllRg();
        if(rgs.isEmpty()) return 1;
        else {
            Collections.sort(rgs);
            Rg rg =rgs.get(rgs.size()-1);
            long id = rg.getId() + 1;
            return id;
        }
    }

    public long getLastIdForest(){
        List<Rg_forest> rgs = rg_forest_service.findAllRg_forest();
        if (rgs.isEmpty()) return 1;
        else {
            Collections.sort(rgs);
            Rg_forest rg = rgs.get(rgs.size() - 1);
            long id = rg.getId_rg_forest() + 1;
            return id;
        }
    }

    public long getLastIdAlimAgricol(){
        List<Rg_alimagricol> rgs = rg_alimAgricol_service.findAllRg_alimagricol();
        if (rgs.isEmpty()) return 1;
        else {
            Collections.sort(rgs);
            Rg_alimagricol rg =rgs.get(rgs.size()-1);
            long id = rg.getId_rg_alimagricol()+1;
            return id;
        }

    }

    public long getLastIdMarine(){
        List<Rg_marine> rgs = rg_marine_service.findAllRg_marine();
        if (rgs.isEmpty()) return 1;
        else {
            Collections.sort(rgs);
            Rg_marine rg =rgs.get(rgs.size()-1);
            long id = rg.getId_rg_marine()+1;
            return id;
        }
    }

    public long getLastIdFaune(){
        List<Rg_faune> rgs = rg_faune_service.findAllRg_faune();
        if (rgs.isEmpty()) return 1;
        else{
            Collections.sort(rgs);
            Rg_faune rg =rgs.get(rgs.size()-1);
            long id = rg.getId_rg_faune()+1;
            return id;
        }
    }


    public long getLastIdMicroorg() {
        List<Rg_micro_org> rgs = rg_micro_org_service.findAllRg_micro_org();
        if (rgs.isEmpty()) return 1;
        else {
            Collections.sort(rgs);
            Rg_micro_org rg = rgs.get(rgs.size() - 1);
            long id = rg.getId_rg_micro_org() + 1;
            return id;
        }
    }

    @RequestMapping("page-info-rg/{id}")
    public String getRG(@PathVariable Long id, Model model)  {
        model.addAttribute("rg",rgService.findRgById(Long.valueOf(id)));
        return ("page_info_rg");
    }

    @RequestMapping("/formulaire_Demande")
    public String showform()  {

        return ("demande_rg");
    }

    @RequestMapping(value = "/rg", method = RequestMethod.GET)
    public String addRgForm(Model model) throws ParseException {
        type_animal[] t = type_animal.values();
        regne[] regn = regne.values();
        type_forest[] t1 = type_forest.values();
        situation[] s = situation.values();
        type_microorganisme[] t2 = type_microorganisme.values();

        model.addAttribute("regne",regn);
        model.addAttribute("type_animal",t);
        model.addAttribute("situation",s);
        model.addAttribute("type_forest",t1);
        model.addAttribute("type_microorganisme",t2);
        model.addAttribute("classifications",classificationService.findAllClassification());

        return "add_rg";
    }

    @RequestMapping(value = "/rg", method = RequestMethod.POST)
    public String addRg(@RequestParam Map<String, String> body,
                        @RequestParam(value = "regne",required = false) regne regne,
                        @RequestParam(value = "regneMicro",required = false) regne regneMicro,
                        @RequestParam(value = "situation", required = false) situation situation,
                        @RequestParam(value = "type_animal",required = false) type_animal typeAnimal,
                        @RequestParam(value = "type_forest",required = false) type_forest typeForest,
                        @RequestParam(value = "type_microorganisme",required = false) type_microorganisme typeMicroorganisme,
                        @RequestParam(value = "type",required = false) String type,
                        @RequestParam(value= "file",required = false)MultipartFile file,
                        @RequestParam(value= "classif",required = false) Long classif) throws ParseException {
       /* try{
            imageService.createImage(file);
        }
        catch(IOException e){
            System.out.println("Failed to upload");
        }*/
        Rg rg = new Rg(
                getLastId(),
                body.get("description"),
                body.get("nom"),
                body.get("nomscient"),
                file.getOriginalFilename(),
                body.get("biotope"),
                body.get("aliment"),
                body.get("cle_identification"),
                body.get("reproduction"),
                body.get("zonegeo"),
                classificationService.findClassificationById(classif)
        );
        switch (type){
            case "1":
                Rg_forest rg_forest=new Rg_forest(
                        getLastIdForest(),
                        body.get("parties_utilises"),
                        typeForest,
                        body.get("constituants"),
                        body.get("usage"),
                        rg
                );
                rg_forest_service.addRg_forest(rg_forest);
                rg.setType(1);
                rgService.addRg(rg);
                return "redirect:/rgs";
            case "2":
                Rg_alimagricol rg_alimagricol= new Rg_alimagricol(
                        getLastIdAlimAgricol(),
                        body.get("typeAlim"),
                        rg
                );
                rg_alimAgricol_service.addRg_alimagricol(rg_alimagricol);
                rg.setType(2);
                rgService.addRg(rg);
                return "redirect:/rgs";
            case "3":
                Rg_marine rg_marine= new Rg_marine(
                        getLastIdMarine(),
                        regne,
                        body.get("niveau_profondeur"),
                        getEstProtege(body),
                        getEnProduction(body),
                        rg
                );
                rg_marine_service.addRg_marine(rg_marine);
                rg.setType(3);
                rgService.addRg(rg);
                return "redirect:/rgs";
            case "4":
                Rg_faune rg_faune=new Rg_faune(
                        getLastIdFaune(),
                        situation,
                        typeAnimal,
                        rg
                );
                rg_faune_service.addRg_faune(rg_faune);
                rg.setType(4);
                rgService.addRg(rg);
                return "redirect:/rgs";
            case "5":
                Rg_micro_org rg_micro_org=new Rg_micro_org(
                        getLastIdMicroorg(),
                        regneMicro,
                        getEstNocif(body),
                        typeMicroorganisme,
                        rg
                );
                rg_micro_org_service.addRg_micro_org(rg_micro_org);
                rg.setType(5);
                rgService.addRg(rg);
                return "redirect:/rgs";
            default:
                System.out.println("error inserting");
                return "redirect:/rgs";
        }
    }


    public Rg findRg(Long id) {
        return rgService.findRgById(id);
    }

    @RequestMapping(value = "/rgs/{id}", method = RequestMethod.GET)
    public String findRgById(Model model, @PathVariable String id) {
        List<Rg> rgs= new ArrayList<>();
        rgs.add(this.findRg(Long.valueOf(id)));
        model.addAttribute("rgs",rgs);
        return "dashbord_rg";
    }

    @RequestMapping(value = "/rgs", method = RequestMethod.GET)
    public String findAllRg(Model model) {
        List<Rg> rgs = rgService.findAllRg();
        model.addAttribute("rgs",rgs);
        return "dashbord_rg";
    }


    @RequestMapping(value = "/updaterg/{id}", method = RequestMethod.GET)
    public String updateRgForm(Model model,
                               @PathVariable String id) throws ParseException {

        Rg rg = rgService.findRgById(Long.valueOf(id));
        switch (rg.getType()){
            case 1:
                Rg_forest rgForest = rg_forest_service.findRg_forestByRg(rg);
                model.addAttribute("rg_type1",rgForest);
            case 2:
                Rg_alimagricol rgAlimagricol = rg_alimAgricol_service.findRg_alimagricolByRg(rg);
                model.addAttribute("rg_type2",rgAlimagricol);
                break;
            case 3:
                Rg_marine rgMarine = rg_marine_service.findRg_marineByRg(rg);
                model.addAttribute("rg_type3",rgMarine);
                break;
            case 4:
                Rg_faune rgFaune = rg_faune_service.findRg_fauneByRg(rg);
                model.addAttribute("rg_type4",rgFaune);
                break;
            case 5:
                Rg_micro_org rgMicroOrg = rg_micro_org_service.findRg_micro_orgByRg(rg);
                model.addAttribute("rg_type5",rgMicroOrg);
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + rg.getType());
        }

        model.addAttribute("rg",rg);

        type_animal[] t = type_animal.values();
        regne[] regn = regne.values();
        type_forest[] t1 = type_forest.values();
        situation[] s = situation.values();
        type_microorganisme[] t2 = type_microorganisme.values();

        model.addAttribute("regne",regn);
        model.addAttribute("type_animal",t);
        model.addAttribute("situation",s);
        model.addAttribute("type_forest",t1);
        model.addAttribute("type_microorganisme",t2);

        return "update_rg";
    }

    @RequestMapping(value = "/updaterg/{id}", method = RequestMethod.POST)
    public String updateRg(@PathVariable String id,
                           @RequestParam Map<String, String> body,
                           @RequestParam(value = "regne",required = false) regne regne,
                           @RequestParam(value = "regneMicro",required = false) regne regneMicro,
                           @RequestParam(value = "situation", required = false) situation situation,
                           @RequestParam(value = "type_animal",required = false) type_animal typeAnimal,
                           @RequestParam(value = "type_forest",required = false) type_forest typeForest,
                           @RequestParam(value = "type_microorganisme",required = false) type_microorganisme typeMicroorganisme)
            throws ParseException {
        Rg rg = rgService.findRgById(Long.valueOf(id));
        rg.setDescription(body.get("description"));
        rg.setNom(body.get("nom"));
        rg.setNomscient(body.get("nomscient"));
        rg.setBiotope(body.get("biotope"));
        rg.setAliment(body.get("aliment"));
        rg.setCle_identification(body.get("cle_identification"));
        rg.setReproduction(body.get("reproduction"));
        rg.setZonegeo(body.get("zonegeo"));
        switch (rg.getType()){
            case 1:
                Rg_forest rg_forest=rg_forest_service.findRg_forestByRg(rg);
                rg_forest.setParties_utilises(body.get("parties_utilises"));
                rg_forest.setType_forest(typeForest);
                rg_forest.setConstituants(body.get("constituants"));
                rg_forest.setUsage(body.get("usage"));
                rg_forest.setRg(rg);
                rg.setType(1);
                rg_forest_service.updateRg_forest(rg_forest);

                return "redirect:/rgs";
            case 2:
                Rg_alimagricol rg_alimagricol= rg_alimAgricol_service.findRg_alimagricolByRg(rg);
                rg_alimagricol.setType(body.get("typeAlim"));
                rg_alimagricol.setRg(rg);
                rg.setType(2);
                rg_alimAgricol_service.updateRg_alimagricol(rg_alimagricol);
                rgService.updateRg(rg);
                return "redirect:/rgs";
            case 3:
                Rg_marine rg_marine= rg_marine_service.findRg_marineByRg(rg);
                rg_marine.setRegne(regne);
                rg_marine.setNiveau_profondeur(body.get("niveau_profondeur"));
                rg_marine.setEst_protege(getEstProtege(body));
                rg_marine.setEn_production(getEnProduction(body));
                rg_marine.setRg(rg);
                rg_marine_service.updateRg_marine(rg_marine);
                rg.setType(3);
                rgService.updateRg(rg);
                return "redirect:/rgs";
            case 4:
                Rg_faune rg_faune= rg_faune_service.findRg_fauneByRg(rg);
                rg_faune.setType(typeAnimal);
                rg_faune.setSituation(situation);
                rg_faune.setRg(rg);
                rg_faune_service.updateRg_faune(rg_faune);
                rg.setType(4);
                rgService.updateRg(rg);
                return "redirect:/rgs";
            case 5:
                Rg_micro_org rg_micro_org= rg_micro_org_service.findRg_micro_orgByRg(rg);
                rg_micro_org.setRegne(regneMicro);
                rg_micro_org.setEst_Nocif(getEstNocif(body));
                rg_micro_org.setType(typeMicroorganisme);
                rg_micro_org.setRg(rg);
                rg_micro_org_service.updateRg_micro_org(rg_micro_org);
                rg.setType(5);
                rgService.updateRg(rg);
                return "redirect:/rgs";
            default:
                System.out.println("error updating");
                return "redirect:/rgs";
        }
    }


    @RequestMapping(value = "/deleterg/{id}", method = RequestMethod.GET)
    public String deleteRgById(@PathVariable String id) {
        Rg rg =rgService.findRgById(Long.valueOf(id));
        int type= rg.getType();
        switch (type){
            case 1:
                Rg_forest rgF =rg_forest_service.findRg_forestByRg(rg);
                rg_forest_service.deleteRg_forest(rgF);
                return "redirect:/rgs";
            case 2:
                Rg_alimagricol rgA = rg_alimAgricol_service.findRg_alimagricolByRg(rg);
                rg_alimAgricol_service.deleteRg_alimagricol(rgA);
                return "redirect:/rgs";
            case 3:
                Rg_marine rgM = rg_marine_service.findRg_marineByRg(rg);
                rg_marine_service.deleteRg_marine(rgM);
                return "redirect:/rgs";
            case 4:
                rg_faune_service.deleteRg_faune(rg.getRg_faune());
                return "redirect:/rgs";
            case 5:

                rg_micro_org_service.deleteRg_micro_org(rg.getRg_micro_org());
                return "redirect:/rgs";
            default:
                System.out.println("error deleting");
                return "redirect:/rgs";
        }
    }

    @RequestMapping(value = "/search_rg", method = RequestMethod.POST)
    public String search_rg(Model model, @RequestParam(value = "nom") String nom, @RequestParam(value = "rgType") String rgType){
        List<Rg> rgs = rgService.findByNomOrNomscientAndRgType(nom, rgType);
        model.addAttribute("rgs",rgs);
        return "dashbord_rg";
    }


}