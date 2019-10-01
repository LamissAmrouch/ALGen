package com.biotech.algen.controller;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_marine;
import com.biotech.algen.model.User;
import com.biotech.algen.service.ClassificationService;
import com.biotech.algen.service.ProcTraditionnelService;
import com.biotech.algen.service.RgService;
import com.biotech.algen.service.Rg_Marine_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class Rg_Marine_Controller {



    @Autowired
    private RgService rgService2;

    @Autowired
    private Rg_Marine_Service rgService;
    @Autowired
    private ClassificationService classificationService ;

    @Autowired
    private ProcTraditionnelService procTraditionnelService ;


    @RequestMapping("/ListRgMarine")

    public String ListRgMarine(Model model) {

        List<Rg> rgs = rgService2.findAllRg();
        model.addAttribute("rgs",rgs);

        return "content-liste-view-rg-marines";
    }



    @RequestMapping("page-info-marine/{id}")
    public String getRG(@PathVariable Long id, Model model, HttpSession session)  {
        List<Rg> rgss = rgService2.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();
        model.addAttribute("rgs",rgss);
        model.addAttribute("myId",id.toString());
      //  model.addAttribute("rg",rgService2.findRgById(Long.valueOf(id)));
        //  model.addAttribute("rg_plus",rgService.findRg_marineById(Long.valueOf(id)));
        model.addAttribute("proc_traditionnels",procTraditionnelService.findAllProcTraditionnel());
        model.addAttribute("classification",classificationService.findClassificationById(Long.valueOf(id)));
        model.addAttribute("logged",session.getAttribute("logged"));
        System.out.println(session.getAttribute("logged"));
        if(session.getAttribute("logged") != null) {
            if(session.getAttribute("logged").toString() == "true") model.addAttribute("roless",((User)session.getAttribute("user")).getRoles());
        }
        for ( Rg rg : rgss) {

            if (rg.getType() == 3){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return ("page_info_marine");
    }



    @RequestMapping("/SlideRgMarine")
    public String SlideRgMarine(Model model) {

        List<Rg> rgss = rgService2.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 3){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-slideshow-view-rg-marine";
    }

    @RequestMapping("/ImageRgMarine")
    public String ImageRgMarine(Model model) {

        List<Rg> rgss = rgService2.findAllRg();
        List<Rg> rgs = new ArrayList<Rg>();

        for ( Rg rg : rgss) {

            if (rg.getType() == 3){ rgs.add(rg); }

        }
        model.addAttribute("rgs",rgs);
        return "content-image-view-rg-marine";
    }


    @RequestMapping(value = "/add_rg_marine", method = RequestMethod.GET)
    public String addRgForm(Model model) throws ParseException {
        return "add_rg_marine";
    }

    @RequestMapping(value = "/add_rg_marine", method = RequestMethod.POST)
    public String addRg(@RequestParam Map<String, String> body,
                        @RequestParam String type) throws ParseException {
       return "redirect:/rgs";
    }


    public Rg_marine findRg(Long id) {
        return rgService.findRg_marineById(id);
    }

  /*  @RequestMapping(value = "/rgs/{id}", method = RequestMethod.GET)
    public String findRgById(Model model, @PathVariable String id) {
        List<Rg> rgs= new ArrayList<>();
        rgs.add(this.findRg(Long.valueOf(id)));
        model.addAttribute("rgs",rgs);
        return "dashbord_rg";
    }

    @RequestMapping(value = "/rgs", method = RequestMethod.GET)
    public String findAllRg(Model model) {
        List<Rg> rgs = rgService.findAllRg();
        System.out.println(rgs);
        model.addAttribute("rgs",rgs);
        return "dashbord_rg";
    }


    @RequestMapping(value = "/updaterg/{id}", method = RequestMethod.GET)
    public String updateRgForm(Model model,@PathVariable String id) throws ParseException {
        Rg rg = rgService.findRgById(Long.valueOf(id));
        String s;
        model.addAttribute("rg",rg);
        return "add_rg";
    }

    @RequestMapping(value = "/updaterg/{id}", method = RequestMethod.POST)
    public String updateRg(@PathVariable String id,@RequestParam Map<String, String> body) throws ParseException {
        Rg rg = rgService.findRgById(Long.valueOf(id));

        rgService.updateRg(rg);

        return "redirect:/rgs";
    }



    @RequestMapping(value = "/deleterg/{id}", method = RequestMethod.GET)
    public String deleteRgById(@PathVariable String id) {
        rgService.deleteRgById(Long.valueOf(id));
        return "redirect:/rgs";
    }

*/

}

