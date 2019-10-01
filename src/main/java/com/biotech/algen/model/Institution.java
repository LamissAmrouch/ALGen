package com.biotech.algen.model;


import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


@Entity
@Table(name = "institution")
public class Institution implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "description")
    private String description;

    @Column(name = "nom")
    private String nom;

    @Column(name = "type_institution")
    private String typeInstitution;

    @Column(name = "date_ouverture")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateOuverture ;

    @Column(name = "localisation")
    private String localisation;

    @Column(name = "site")
    private String site;

    @Column(name = "image")
    private String image;


    @Column(name = "domaine")
    private String domaine;


    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "institutions_domaines",
            joinColumns = {@JoinColumn(name = "id_institution", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "id_domaine", referencedColumnName = "id")})
    private List<Domaine> domaines;

    public Institution()  {}


    public Institution(String description, String nom, String typeInstitution, Date dateOuverture, String localisation, String site, String image, String domaine, List<Domaine> domaines) {

        this.description = description;
        this.nom = nom;
        this.typeInstitution = typeInstitution;
        this.dateOuverture = dateOuverture;
        this.localisation = localisation;
        this.site = site;
        this.image = image;

        this.domaine = domaine;

        this.domaines = domaines;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


    public void setDomaine(String domaine) {
        this.domaine = domaine;
    }

    public String getDomaine() {
        return domaine;
    }


    public void setLocalisation(String localisation) {
        this.localisation = localisation;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getLocalisation() {
        return localisation;
    }

    public String getSite() {
        return site;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNom() { return nom; }

    public void setNom(String nom) { this.nom = nom; }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Domaine> getDomaines() {
        return domaines;
    }

    public void setDomaines(List<Domaine> domaines) {
        this.domaines = domaines;
    }

    public String getTypeInstitution() {
        return typeInstitution;
    }

    public void setTypeInstitution(String typeInstitution) {
        this.typeInstitution = typeInstitution;
    }

    public Date getDateOuverture() {
        return dateOuverture;
    }

    public void setDateOuverture(Date dateOuverture) {
        this.dateOuverture = dateOuverture;
    }
}
