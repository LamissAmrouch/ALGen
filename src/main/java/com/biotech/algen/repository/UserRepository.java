package com.biotech.algen.repository;

import com.biotech.algen.model.Role;
import com.biotech.algen.model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;
import java.util.List;

public interface UserRepository extends CrudRepository<User,Long> {
    User findByEmail(String email);
    @Query(value = "select DISTINCT u from User u left join u.roles ur where upper(u.nom)  like ?1%  and upper(u.prenom) like ?2%  and ( ur in ?3 or ?4 = true) ")
    List<User> findByNomContainingAndPrenomContainingAndRolesContaining(String nom, String prenom, Collection<Role> roles, boolean colImpty);
}
