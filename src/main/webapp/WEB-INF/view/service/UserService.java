package com.biotech.algen.service;

import com.biotech.algen.model.user;

import java.util.List;

public interface UserService {

    user addUser(user user);

    user findUserById(Long id);

    List<user> findAllUser();

    user updateUser(user user);

    void deleteUser(user user);

    void deleteUserById(Long id);



}
