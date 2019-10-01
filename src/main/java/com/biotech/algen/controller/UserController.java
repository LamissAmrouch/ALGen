package com.biotech.algen.controller;

import com.biotech.algen.model.Role;
import com.biotech.algen.model.User;
import com.biotech.algen.model.sexe;
import com.biotech.algen.service.RoleService;
import com.biotech.algen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.*;

@Controller
public class UserController {

    @Autowired
    private UserService userService;


    @Autowired
    private RoleController controller;

    @Autowired
    private RoleService roleService;

    public sexe getSexe(@RequestParam Map<String, String> body){
        if(body.get("sexe").compareTo("Homme")==0){
            return sexe.Homme;
        }
        else{
            return sexe.Femme;
        }
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String addUserForm(Model model) throws ParseException {
        model.addAttribute("rs",controller.findAll());
        return "add_user";
    }

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String addUser(@RequestParam(value = "array",required = false) String[] array,
                          @RequestParam Map<String, String> body) throws ParseException {
            List<Role> Roles = new ArrayList<>();
            for (int i=0; i<array.length; i++)
            {
                System.out.println(array[i]);
                Roles.add(controller.findRole(Long.valueOf(array[i])));
            }
            java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
            User user = new User(
                    body.get("nom"),
                    body.get("prenom"),
                    body.get("email"),
                    body.get("mot_de_passe"),
                    body.get("fonction"),
                    getSexe(body),
                    body.get("info_personnels"),
                    date,
                    Roles
            );
            userService.addUser(user);
            return "redirect:/users";
        }



    public User findUser(Long id) {
        return userService.findUserById(id);
    }

    @RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
    public String findUserById(Model model, @PathVariable String id) {
        List<User> Users = new ArrayList<>();
        Users.add(this.findUser(Long.valueOf(id)));
        model.addAttribute("users", Users);
        return "dashbord_user";
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String findAllUser(Model model) {
        List<User> Users = userService.findAllUser();
        model.addAttribute("users", Users);
        model.addAttribute("roles", roleService.findAllRole() );
        return "dashbord_user";
    }


    @RequestMapping(value = "/updateuser/{id}", method = RequestMethod.GET)
    public String updateUserForm(Model model,@PathVariable String id) throws ParseException {
        User user = userService.findUserById(Long.valueOf(id));
        String s;
        if(user.getSex().compareTo(sexe.Homme)==0){
            s = "Homme";
        }
        else{
            s = "Femme";
        }
        model.addAttribute("rs",controller.findAll());
        model.addAttribute("user",user);
        model.addAttribute("genre",s);

        return "add_user";
    }

    @RequestMapping(value = "/updateuser/{id}", method = RequestMethod.POST)
    public String updateUser(@PathVariable String id,@RequestParam Map<String, String> body) throws ParseException {
        User user = userService.findUserById(Long.valueOf(id));
        user.setInfo_personnels(body.get("info_personnels"));
        long millis=System.currentTimeMillis();
        java.sql.Date date=new java.sql.Date(millis);
        user.setDate_creation(date);

        user.setFonction(body.get("fonction"));
        user.setNom(body.get("nom"));
        user.setPrenom(body.get("prenom"));
        user.setSex(getSexe(body));
        user.setPassword(body.get("mot_de_passe"));
        user.setEmail(body.get("email"));
       // User.setRole();
        userService.updateUser(user);

        return "redirect:/users";
    }



    @RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
    public String deleteUserById(@PathVariable String id) {
        userService.deleteUserById(Long.valueOf(id));
        return "redirect:/users";
    }

    @RequestMapping(value = "/search_user", method = RequestMethod.POST)
    public String search(Model model,@RequestParam(value = "nom",required = false) String nom, @RequestParam(value = "prenom",required = false) String prenom,
                         @RequestParam(value = "roles",required = false) List<Role> roles) {
        List<User> users = userService.findByNomStartingWithAndPrenomStartingWithAndRolesContaining(nom,
                prenom,roles);
        model.addAttribute("users", users);
        model.addAttribute("roles", roleService.findAllRole() );
        return "dashbord_user";
    }

}

