package com.biotech.algen.service;

import com.biotech.algen.model.role;

import java.util.List;

public interface RoleService {

    role addRole(role role);

    role findRoleById(Long id);

    List<role> findAllRole();

    role updateRole(role role);

    void deleteRole(role role);

    void deleteRoleById(Long id);



}
