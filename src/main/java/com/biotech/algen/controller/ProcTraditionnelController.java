package com.biotech.algen.controller;

import com.biotech.algen.model.ProcTraditionnel;
import com.biotech.algen.model.Rg;
import com.biotech.algen.service.ProcTraditionnelService;
import com.biotech.algen.service.RgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class ProcTraditionnelController {

    @Autowired
    private ProcTraditionnelService procTraditionnelService;

    @Autowired
    private RgService rgService;

    @RequestMapping(value = "/proc", method = RequestMethod.GET)
    public String addProcTraditionnelForm(Model model) throws ParseException {
        model.addAttribute("rgs",rgService.findAllRg());
        return "add_proc_traditionnel";
    }

    @RequestMapping(value = "/proc", method = RequestMethod.POST)
    public String addProcTraditionnel(@RequestParam Map<String, String> body) throws ParseException {
        Rg rg = rgService.findRgById(Long.valueOf(body.get("rg")));
        procTraditionnelService.addProcTraditionnel(
                new ProcTraditionnel(
                        body.get("nom")
                        ,body.get("description")
                        ,rg)
        );
        return "redirect:/procs";

    }

    public ProcTraditionnel findProcTraditionnel(Long id) {
        return procTraditionnelService.findProcTraditionnelById(id);
    }

    @RequestMapping(value = "/procs/{id}", method = RequestMethod.GET)
    public String findProcTraditionnelById(Model model,@PathVariable String id) {
        List<ProcTraditionnel> procs = new ArrayList<>();
        procs.add(this.findProcTraditionnel(Long.valueOf(id)));
        model.addAttribute("procs", procs);
        return "dashbord_proc_traditionnel";
    }

    public List<ProcTraditionnel> findAll(){
        return procTraditionnelService.findAllProcTraditionnel();
    }

    @RequestMapping(value = "/procs", method = RequestMethod.GET)
    public String findAllProcTraditionnel(Model model) {
        model.addAttribute("procs",findAll());
        return "dashbord_proc_traditionnel";
    }


    @RequestMapping(value = "/updateproc/{id}", method = RequestMethod.GET)
    public String updateProcTraditionnelForm(Model model,@PathVariable String id) throws ParseException {
        ProcTraditionnel proc = procTraditionnelService.findProcTraditionnelById(Long.valueOf(id));
        model.addAttribute("proc",proc);
        model.addAttribute("rgs",rgService.findAllRg());
        return "add_proc_traditionnel";
    }

    @RequestMapping(value = "/updateproc/{id}", method = RequestMethod.POST)
    public String updateProcTraditionnele(@PathVariable String id,@RequestParam Map<String, String> body) throws ParseException {
        ProcTraditionnel proc = procTraditionnelService.findProcTraditionnelById(Long.valueOf(id));
        proc.setDescription(body.get("description"));
        proc.setNom(body.get("description"));
        proc.setRg(rgService.findRgById(Long.valueOf(body.get("rg"))));
        procTraditionnelService.updateProcTraditionnel(proc);
        return "redirect:/procs";
    }



    @RequestMapping(value = "/deleteproc/{id}", method = RequestMethod.GET)
    public String deleteProcTraditionnelById(@PathVariable String id) {
        procTraditionnelService.deleteProcTraditionnelById(Long.valueOf(id));
        return "redirect:/procs";
    }


    @RequestMapping(value = "/search_procTrad", method = RequestMethod.POST)
    public String search_procTrad(Model model,@RequestParam (value = "nom") String nom) {
        List<ProcTraditionnel> procT = procTraditionnelService.findByRgNomOrNomScientifique(nom);

        model.addAttribute("procs",procT);
        return "dashbord_proc_traditionnel";
    }

}

