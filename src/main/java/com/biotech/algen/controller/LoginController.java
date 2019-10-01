package com.biotech.algen.controller;

import com.biotech.algen.model.Role;
import com.biotech.algen.model.User;
import com.biotech.algen.model.sexe;
import com.biotech.algen.repository.UserRepository;
import com.biotech.algen.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;


@Controller
@SessionAttributes
public class LoginController {


    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String acceuil() {


        return "accueil";
    }

    @RequestMapping(value = "/faq", method = RequestMethod.GET)
    public String faq() {
        return "faq";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String LoginMessage() {

        return "login";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String Logout() {


        return "redirect:/login";
    }
    @RequestMapping(value = "/sign_in", method = RequestMethod.POST)
    public String CreateUser(ModelMap model,HttpSession session, @RequestParam String nom, @RequestParam String prenom, @RequestParam String sexe, @RequestParam String fonction, @RequestParam String email, @RequestParam String password)
    {


        User userExists = userRepository.findByEmail(email);

     if(userExists == null)
     {

         sexe sexValue = com.biotech.algen.model.sexe.Homme;
         if (sexe.equals("1")) sexValue = com.biotech.algen.model.sexe.Femme;
         List<Role> roles = new ArrayList<>();

         roles.add(new Role(Long.valueOf(11), "CONSULTER RG_Forest"));
         roles.add(new Role(Long.valueOf(10), "CONSULTER RG_Alimentaire"));
         roles.add(new Role(Long.valueOf(9), "CONSULTER RG_Faune"));
         roles.add(new Role(Long.valueOf(8), "CONSULTER RG_Marine"));
         roles.add(new Role(Long.valueOf(12), "CONSULTER RG_MicroOrganisme"));
         User user = new User(nom, prenom, email, password, fonction, sexValue, "", new Date(System.currentTimeMillis()), roles);
         userRepository.save(user);
         session.setAttribute("logged", true);
         session.setAttribute("user", user);

         return "redirect:/";
     }
     else {
         model.addAttribute("error", true);
         model.addAttribute("errorC", "Cet email existe deja");

         return "login";
     }

    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String welcomePage(ModelMap model,HttpSession session ,@RequestParam String email, @RequestParam String password) {
        String redirect = "redirect:/";
        User userExists = userRepository.findByEmail(email);
        if (userExists != null) {
            if (userExists.getPassword().equals(password)) {
               session.setAttribute("logged", true);
                session.setAttribute("user", userExists);


                List<Role> roles = userExists.getRoles();
                System.out.println(roles);
                for (Role role : roles) {
                    if (role.getId() == Long.valueOf(15)) {
                        redirect = "redirect:/users";
                        break;


                    }
                }


                return redirect;

            } else {
                model.addAttribute("error", true);
                model.addAttribute("errorC", "Mot de passe érroné");
                return "login";
            }

        } else {
            model.addAttribute("error", true);
            model.addAttribute("errorC", "Le Compte n'existe pas");
            return "login";
        }

    }
}