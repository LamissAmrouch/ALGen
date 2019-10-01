package com.biotech.algen.controller;

import com.biotech.algen.model.Rg;

import com.biotech.algen.model.User;
import com.biotech.algen.service.RgService;
import com.biotech.algen.service.Rg_Forest_Service;

import com.biotech.algen.service.*;
import com.biotech.algen.service.impl.ProcTraditionnelServiceImpl;
import com.biotech.algen.service.impl.Rg_Alimagricol_ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RgAgricoAlimetController {


    @Autowired
    private RgService rgService;

    @Autowired

    private Rg_Forest_Service rg_forest_service;

    private Rg_AlimAgricol_Service rg_Alimagricol_Service ;

    @Autowired
    private ProcTraditionnelService procTraditionnelService;
    @Autowired
    private ClassificationService classificationService ;


    @RequestMapping("/ListRgAlimagricol")
    public String ListRgAlimagricol(Model model) {

        List<Rg> rgs = rgService.findAllRg();
        model.addAttribute("rgs",rgs);

        return "content-liste-view-rg-alimagricol";
    }


    @RequestMapping("page-info-agro-alimentaire/{id}")
    public String getRG(@PathVariable Long id, Model model, HttpSession session)  {
        model.addAttribute("rgs",rgService.findAllRg());
        model.addAttribute("myId",id.toString());
        //model.addAttribute("rg",rgService.findRgById(Long.valueOf(id)));
       // model.addAttribute("rg_plus",rg_Alimagricol_Service.findAllRg_alimagricol());
        model.addAttribute("proc_traditionnels",procTraditionnelService.findAllProcTraditionnel());
        model.addAttribute("classification",classificationService.findClassificationById(Long.valueOf(id)));
        model.addAttribute("logged",session.getAttribute("logged"));
        System.out.println(session.getAttribute("logged"));
        if(session.getAttribute("logged") != null) {
            System.out.println("fffffffffff"+((User)session.getAttribute("user")).getRoles());
            if(session.getAttribute("logged").toString() == "true") model.addAttribute("roless",((User)session.getAttribute("user")).getRoles());
        }

        return ("page_info_alimentaire");
    }


    @RequestMapping("/SlideRgAlimagricol")
    public String SlideRgAlimagricol(Model model) {

        List<Rg> rgss = rgService.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 2){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-slideshow-view-rg-alimagricol";
    }

    @RequestMapping("/ImageRgAlimagricol")
    public String ImageRgAlimagricol(Model model) {

        List<Rg> rgss = rgService.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 2){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-image-view-alimagricol";
    }

}
