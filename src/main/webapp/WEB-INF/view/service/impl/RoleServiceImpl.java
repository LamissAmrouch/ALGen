package com.biotech.algen.service.impl;

import com.biotech.algen.model.role;
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
    public role addRole(role role) {
        return roleRepository.save(role);
    }

    @Override
    public role findRoleById(Long id) {
        return roleRepository.findById(id).get();
    }

    @Override
    public List<role> findAllRole() {
        List<role> roles = new ArrayList<role>();
        roleRepository.findAll().forEach(roles::add);
        return roles;
    }

    @Override
    public role updateRole(role role) {
        return roleRepository.save(role);
    }

    @Override
    public void deleteRole(role role) {
         roleRepository.delete(role);
    }

    @Override
    public void deleteRoleById(Long id) {
        roleRepository.deleteById(id);
    }
}
