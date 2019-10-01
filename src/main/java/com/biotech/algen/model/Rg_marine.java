package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "rg_marine")
public class Rg_marine implements Serializable,Comparable<Rg_marine> {
    @Id
    @Column(name = "id_rg_marine")
    private long id_rg_marine;

    @Column(name = "regne")
    private regne Regne;

    @Column(name = "niveau_profondeur")
    private String niveau_profondeur;

    @Column(name = "est_protege")
    private Boolean est_protege;

    @Column(name = "en_production")
    private Boolean en_production;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn
    private Rg rg;

    protected Rg_marine() {

    }

    public Rg_marine(regne regne,
                     String niv_Prof,
                     Boolean est_protege,
                     Boolean en_production,
                     Rg rg) {
        Regne = regne;
        this.niveau_profondeur = niv_Prof;
        this.est_protege = est_protege;
        this.en_production = en_production;
        this.rg = rg;
        this.rg.setRg_marine(this);
    }

    public Rg_marine(
            Long id_rg_m,
            regne regne,
                     String niv_Prof,
                     Boolean est_protege,
                     Boolean en_production,
                     Rg rg) {
        Regne = regne;
        this.id_rg_marine=id_rg_m;
        this.niveau_profondeur = niv_Prof;
        this.est_protege = est_protege;
        this.en_production = en_production;
        this.rg = rg;
        this.rg.setRg_marine(this);
    }

    public long getId_rg_marine() {
        return id_rg_marine;
    }

    public void setId_rg_marine(long id_rg_marine) {
        this.id_rg_marine = id_rg_marine;
    }

    public regne getRegne() {
        return Regne;
    }

    public void setRegne(regne regne) {
        Regne = regne;
    }

    public String getNiveau_profondeur() {
        return niveau_profondeur;
    }

    public void setNiveau_profondeur(String niveau_profondeur) {
        this.niveau_profondeur = niveau_profondeur;
    }

    public Boolean getEst_protege() {
        return est_protege;
    }

    public void setEst_protege(Boolean est_protege) {
        this.est_protege = est_protege;
    }

    public Boolean getEn_production() {
        return en_production;
    }

    public void setEn_production(Boolean en_production) {
        this.en_production = en_production;
    }

    public Rg getRg() {
        return rg;
    }

    public void setRg(Rg rg) {
        this.rg = rg;
    }

    @Override
    public int compareTo(Rg_marine other) {
        return new Long(this.getId_rg_marine()).compareTo(new Long(other.getId_rg_marine()));

    }
}