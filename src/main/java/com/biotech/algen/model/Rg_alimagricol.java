package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "rg_alimagricol")
public class Rg_alimagricol implements Serializable,Comparable<Rg_alimagricol> {
    @Id
    @Column(name = "id_rg_alimagricol")
    private long id_rg_alimagricol;

    @Column(name = "type")
    private String type;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn
    private Rg rg;

    @Column(name = "regne")
    private String regne;

    protected Rg_alimagricol() {

    }

    public Rg_alimagricol(String type, Rg id_rg) {
        this.type = type;
        this.rg = id_rg;
        this.rg.setRg_alimagricol(this);
        this.regne= "Plante";
    }
    public Rg_alimagricol(
            Long id_rg_alim,String type, Rg id_rg) {
        this.id_rg_alimagricol=id_rg_alim;
        this.type = type;
        this.rg = id_rg;
        this.rg.setRg_alimagricol(this);
        this.regne= "Plante";
    }


    public String getRegne() {
        return regne;
    }

    public void setRegne(String regne) {
        this.regne = regne;
    }

    public long getId_rg_alimagricol() {
        return id_rg_alimagricol;
    }

    public void setId_rg_alimagricol(long id_rg_alimagricol) {
        this.id_rg_alimagricol = id_rg_alimagricol;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Rg getRg() {
        return rg;
    }

    public void setRg(Rg rg) {
        this.rg = rg;
    }

    @Override
    public int compareTo(Rg_alimagricol other) {
        return new Long(this.getId_rg_alimagricol()).compareTo(new Long(other.getId_rg_alimagricol()));

    }
}