package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "proctraditionnel")
public class ProcTraditionnel implements Serializable {
    @Id
    private long id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "description")
    private String description;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_rg", nullable = false)
    private Rg rg;


    protected ProcTraditionnel() {

    }


    public ProcTraditionnel( String nom, String description, Rg rg) {

        this.nom = nom;
        this.description = description;
        this.rg = rg;
        List<ProcTraditionnel> procTraditionnels=this.rg.getProcTraditionnel();
        procTraditionnels.add(this);
        this.rg.setProcTraditionnel(procTraditionnels);
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Rg getRg() {
        return rg;
    }

    public void setRg(Rg rg) {
        this.rg = rg;
    }
}