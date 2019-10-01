package com.biotech.algen.service.impl;

import com.biotech.algen.model.Role;
import com.biotech.algen.model.User;
import com.biotech.algen.repository.UserRepository;
import com.biotech.algen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository UserRepository;

    @Override
    public User addUser(User user) {
        return UserRepository.save(user);
    }

    @Override
    public User findUserById(Long id) {
        //RoleServiceImpl r = new RoleServiceImpl();
        //Role role1 =  r.findRoleById(Long.valueOf("1"));
        return UserRepository.findById(id).get(); //recupere l'objet .get
    }

    @Override
    public List<User> findAllUser() {
        List<User> Users = new ArrayList<User>();
        UserRepository.findAll().forEach(Users::add);
        return Users;
    }

    @Override
    public User updateUser(User user) {
        return UserRepository.save(user);
    }

    @Override
    public void deleteUser(User user) {
         UserRepository.delete(user);
    }

    @Override
    public void deleteUserById(Long id) {
        UserRepository.deleteById(id);
    }

    @Override
    public List<User> findByNomStartingWithAndPrenomStartingWithAndRolesContaining(String nom, String prenom, List<Role> roles) {
        boolean impty = false;
        Role r = roles.get(0);
        if(r == null){
            impty = true;
        }

        return UserRepository.findByNomContainingAndPrenomContainingAndRolesContaining(nom.toUpperCase(),prenom.toUpperCase(),roles, impty);
    }
}
