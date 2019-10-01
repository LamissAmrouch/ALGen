package com.biotech.algen.service.impl;

import com.biotech.algen.controller.RoleController;
import com.biotech.algen.model.role;
import com.biotech.algen.model.user;
import com.biotech.algen.repository.UserRepository;
import com.biotech.algen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository UserRepository;

    @Override
    public user addUser(user user) {
        return UserRepository.save(user);
    }

    @Override
    public user findUserById(Long id) {
        //RoleServiceImpl r = new RoleServiceImpl();
        //role role1 =  r.findRoleById(Long.valueOf("1"));
        return UserRepository.findById(id).get(); //recupere l'objet .get
    }

    @Override
    public List<user> findAllUser() {
        List<user> users = new ArrayList<user>();
        UserRepository.findAll().forEach(users::add);
        return users;
    }

    @Override
    public user updateUser(user user) {
        return UserRepository.save(user);
    }

    @Override
    public void deleteUser(user user) {
         UserRepository.delete(user);
    }

    @Override
    public void deleteUserById(Long id) {
        UserRepository.deleteById(id);
    }
}
