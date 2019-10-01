package com.biotech.algen.service;

import com.biotech.algen.model.Role;
import com.biotech.algen.model.User;

import java.util.Collection;
import java.util.List;

public interface UserService {

    User addUser(User user);

    User findUserById(Long id);

    List<User> findAllUser();

    User updateUser(User user);

    void deleteUser(User user);

    void deleteUserById(Long id);

    List<User> findByNomStartingWithAndPrenomStartingWithAndRolesContaining(String nom, String prenom, List<Role> roles);

}
