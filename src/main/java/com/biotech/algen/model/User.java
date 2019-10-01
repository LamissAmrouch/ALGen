package com.biotech.algen.model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Entity
@Table(name = "utilisateur")
public class User implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "prenom")
    private String prenom;

    @Enumerated(EnumType.STRING)
    @Column(name = "sexe")
    private sexe sex;

    @Column(name = "email")
    private String email;

    @Column(name = "fonction")
    private String fonction;

    @Column(name = "password")
    private String password;

    @Column(name = "info_personnels")
    private String info_personnels;

    @Column(name = "date_creation")
    private Date date_creation;

    @ManyToMany()
    @JoinTable(name = "avoir_role",
            joinColumns = @JoinColumn(name = "id_utilisateur", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "id_role", referencedColumnName = "id"))
    private List<Role> roles;

    /*@ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE},
            fetch = FetchType.EAGER)
    private List<Auteur> auteurs; */

    protected User(){

    }

    public User(
            String nom,
            String prenom,
            String email,
            String password,
            String fonction,
            sexe sex,
            String info_personnels,
            Date date_creation,
            List<Role> roles
            ) {
        this.password=password;
        this.fonction=fonction;
        this.email=email;
        this.date_creation=date_creation;
        this.info_personnels = info_personnels;
        this.sex=sex;
        this.nom=nom;
        this.prenom=prenom;
        this.roles=roles;
       // this.roles = Stream.of(roles).collect(Collectors.toSet());
      //  this.roles.forEach(x -> x.getUsers().add(this));
    }

    public long getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public sexe getSex() {
        return sex;
    }

    public String getEmail() {
        return email;
    }

    public String getFonction() {
        return fonction;
    }

    public String getPassword() {
        return password;
    }

    public String getInfo_personnels() {
        return info_personnels;
    }

    public Date getDate_creation() {
        return date_creation;
    }

    public List<Role> getRoles() { return roles; }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setSex(sexe sex) {this.sex = sex;  }

    public void setEmail(String email) { this.email = email; }

    public void setFonction(String fonction) { this.fonction = fonction;  }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setInfo_personnels(String info_personnels) {
        this.info_personnels = info_personnels;
    }

    public void setDate_creation(Date date_creation) {
        this.date_creation = date_creation;
    }

    public void setRoles(List<Role> roles){ this.roles = roles; }
}
