package com.biotech.algen.controller;

import com.biotech.algen.model.Rg;


import com.biotech.algen.model.User;
import com.biotech.algen.service.ClassificationService;
import com.biotech.algen.service.ProcTraditionnelService;

import com.biotech.algen.service.RgService;
import com.biotech.algen.service.Rg_Micro_Org_Service;
import com.biotech.algen.service.impl.ProcTraditionnelServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RgMicroOrgaController {

    @Autowired
    private RgService rgService;


    @Autowired
    private ProcTraditionnelServiceImpl procTraditionnelService;

    @Autowired
    private Rg_Micro_Org_Service rg_Micro_Org_Service;
    @Autowired
    private ClassificationService classificationService ;


    @RequestMapping("/ListRgMicroOrg")
    public String ListRgMicroOrg(Model model) {

        List<Rg> rgs = rgService.findAllRg();
        model.addAttribute("rgs",rgs);

        return "content-liste-view-rg-micro-org";
    }



    @RequestMapping("page-info-micro-orga/{id}")
    public String getRG(@PathVariable Long id, Model model, HttpSession session)  {
        model.addAttribute("rgs",rgService.findAllRg());
        model.addAttribute("myId",id.toString());
       // model.addAttribute("rg",rgService.findRgById(Long.valueOf(id)));
        //model.addAttribute("rg_plus",rg_Micro_Org_Service.findRg_micro_orgById(Long.valueOf(id)));
        //model.addAttribute("proc_traditionnel",procTraditionnelService.findProcTraditionnelById(Long.valueOf(id)));
        model.addAttribute("classification",classificationService.findClassificationById(Long.valueOf(id)));
        model.addAttribute("logged",session.getAttribute("logged"));
        System.out.println(session.getAttribute("logged"));
        if(session.getAttribute("logged") != null) {
            System.out.println("fffffffffff"+((User)session.getAttribute("user")).getRoles());
            if(session.getAttribute("logged").toString() == "true") model.addAttribute("roless",((User)session.getAttribute("user")).getRoles());
        }
        return ("page_info_micro_orga");
    }



    @RequestMapping("/SlideRgMicroOrg")
    public String SlideRgMicroOrg(Model model) {

        List<Rg> rgss = rgService.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 5){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-slideshow-view-rg-micro-org";
    }

    @RequestMapping("/ImageRgMicroOrg")
    public String ImageRgMicroOrg(Model model) {

        List<Rg> rgss = rgService.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 5){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-image-view-rg-micro-orga";
    }

}
