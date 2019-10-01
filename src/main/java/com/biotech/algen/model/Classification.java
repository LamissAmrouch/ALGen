package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "classification")
public class Classification implements Serializable {
    @Id
    private long id;

    @Column(name = "espece")
    private String espece;

    @Column(name = "genre")
    private String genre;

    @Column(name = "famille")
    private String famille;

    @Column(name = "ordre")
    private String ordre;

    @Column(name = "class")
    private String classe;

    @Column(name = "embranchement")
    private String embranchement;

    @Column(name = "groupe")
    private String groupe;

    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            mappedBy = "classification")
    private List<Rg> rgs = new ArrayList<>();

    protected Classification() {

    }

    public Classification(String espece, String genre, String famille, String ordre, String classe, String embranchement, String groupe) {
        this.espece = espece;
        this.genre = genre;
        this.famille = famille;
        this.ordre = ordre;
        this.classe = classe;
        this.embranchement = embranchement;
        this.groupe = groupe;
    }

    public Classification(long id, String espece, String genre, String famille, String ordre, String classe, String embranchement, String groupe, List<Rg> rgs) {
        this.id = id;
        this.espece = espece;
        this.genre = genre;
        this.famille = famille;
        this.ordre = ordre;
        this.classe = classe;
        this.embranchement = embranchement;
        this.groupe = groupe;
        this.rgs = rgs;
    }

    public List<Rg> getRgs() {
        return rgs;
    }

    public void setRgs(List<Rg> rgs) {
        this.rgs = rgs;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEspece() {
        return espece;
    }

    public void setEspece(String espece) {
        this.espece = espece;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getFamille() {
        return famille;
    }

    public void setFamille(String famille) {
        this.famille = famille;
    }

    public String getOrdre() {
        return ordre;
    }

    public void setOrdre(String ordre) {
        this.ordre = ordre;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }

    public String getEmbranchement() {
        return embranchement;
    }

    public void setEmbranchement(String embranchement) {
        this.embranchement = embranchement;
    }

    public String getGroupe() {
        return groupe;
    }

    public void setGroupe(String groupe) {
        this.groupe = groupe;
    }
}