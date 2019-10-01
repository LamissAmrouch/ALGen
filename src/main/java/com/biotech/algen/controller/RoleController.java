package com.biotech.algen.controller;

import com.biotech.algen.model.Role;
import com.biotech.algen.service.RoleService;
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
public class RoleController {

    @Autowired
    private RoleService roleService;


    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public String addRoleForm(Model model) throws ParseException {
        return "add_role";
    }

    @RequestMapping(value = "/role", method = RequestMethod.POST)
    public String addRole(@RequestParam Map<String, String> body) throws ParseException {
        roleService.addRole(
                new Role(body.get("description"))
        );
        return "redirect:/roles";

    }

    public Role findRole(Long id) {
        return roleService.findRoleById(id);
    }

    @RequestMapping(value = "/roles/{id}", method = RequestMethod.GET)
    public String findRoleById(Model model,@PathVariable String id) {
        List<Role> Roles = new ArrayList<>();
        Roles.add(this.findRole(Long.valueOf(id)));
        model.addAttribute("roles", Roles);
        return "dashbord_role";
    }

    public List<Role> findAll(){
        return roleService.findAllRole();
    }

    @RequestMapping(value = "/roles", method = RequestMethod.GET)
    public String findAllRole(Model model) {
        model.addAttribute("roles",findAll());
        return "dashbord_role";
    }


    @RequestMapping(value = "/updaterole/{id}", method = RequestMethod.GET)
    public String updateRoleForm(Model model,@PathVariable String id) throws ParseException {
        Role role = roleService.findRoleById(Long.valueOf(id));
        model.addAttribute("role",role);
        return "add_role";
    }

    @RequestMapping(value = "/updaterole/{id}", method = RequestMethod.POST)
    public String updateRole(@PathVariable String id,@RequestParam Map<String, String> body) throws ParseException {
        Role role = roleService.findRoleById(Long.valueOf(id));
        role.setDescription(body.get("description"));
        //Role.setId(Long.valueOf(body.get("id")));
        roleService.updateRole(role);
        return "redirect:/roles";
    }



    @RequestMapping(value = "/deleterole/{id}", method = RequestMethod.GET)
    public String deleteRoleById(@PathVariable String id) {
        roleService.deleteRoleById(Long.valueOf(id));
        return "redirect:/roles";
    }



}

