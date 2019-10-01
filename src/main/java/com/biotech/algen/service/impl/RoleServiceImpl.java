package com.biotech.algen.service.impl;

import com.biotech.algen.model.Role;
import com.biotech.algen.repository.RoleRepository;
import com.biotech.algen.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Role addRole(Role role) {
        return roleRepository.save(role);
    }

    @Override
    public Role findRoleById(Long id) {
        return roleRepository.findById(id).get();
    }

    @Override
    public List<Role> findAllRole() {
        List<Role> Roles = new ArrayList<Role>();
        roleRepository.findAll().forEach(Roles::add);
        return Roles;
    }

    @Override
    public Role updateRole(Role role) {
        return roleRepository.save(role);
    }

    @Override
    public void deleteRole(Role role) {
         roleRepository.delete(role);
    }

    @Override
    public void deleteRoleById(Long id) {
        roleRepository.deleteById(id);
    }
}
