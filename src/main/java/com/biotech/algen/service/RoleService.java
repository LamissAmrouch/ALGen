package com.biotech.algen.service;

import com.biotech.algen.model.Role;

import java.util.List;

public interface RoleService {

    Role addRole(Role role);

    Role findRoleById(Long id);

    List<Role> findAllRole();

    Role updateRole(Role role);

    void deleteRole(Role role);

    void deleteRoleById(Long id);



}
