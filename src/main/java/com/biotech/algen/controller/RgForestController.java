package com.biotech.algen.controller;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.User;
import com.biotech.algen.service.ClassificationService;
import com.biotech.algen.service.RgService;
import com.biotech.algen.service.Rg_Forest_Service;
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
public class RgForestController {

    @Autowired
    private RgService rgService;

    @Autowired
    private Rg_Forest_Service rg_forest_service;


    @Autowired
    private ProcTraditionnelServiceImpl procTraditionnelService;

    @Autowired
    private ClassificationService classificationService ;

    @RequestMapping("page-info-forest/{id}")
    public String getRG(@PathVariable Long id, Model model, HttpSession session)  {
       // model.addAttribute("rgs",rgService.findAllRg());
       // model.addAttribute("myId",id.toString());
        model.addAttribute("rg",rgService.findRgById(Long.valueOf(id)));
        model.addAttribute("rg_plus",rg_forest_service.findRg_forestById(Long.valueOf(id)));
        model.addAttribute("proc_traditionnel",procTraditionnelService.findProcTraditionnelById(Long.valueOf(id)));
        model.addAttribute("classification",classificationService.findClassificationById(Long.valueOf(id)));
        model.addAttribute("logged",session.getAttribute("logged"));

       if(session.getAttribute("logged") != null) {
           System.out.println(((User)session.getAttribute("user")).getRoles());
           if(session.getAttribute("logged").toString() == "true") model.addAttribute("roless",((User)session.getAttribute("user")).getRoles());
       }

        return ("page_info_forestier");
    }


    @RequestMapping("/ListRgForest")
    public String ListRgForest(Model model) {

        List<Rg> rgs = rgService.findAllRg();
        model.addAttribute("rgs",rgs);

        return "content-liste-view-rg-forest";
    }

    @RequestMapping("/SlideRgForest")
    public String SlideRgForest(Model model) {

        List<Rg> rgss = rgService.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 1){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-slideshow-view-rg-forest";
    }

    @RequestMapping("/ImageRgForest")
    public String ImageRgForest(Model model) {

        List<Rg> rgss = rgService.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 1){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-image-view-rg-forest";
    }


}
