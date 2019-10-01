package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "rg_faune")
public class Rg_faune implements Serializable,Comparable<Rg_faune> {
    @Id
    @Column(name = "id_rg_faune")
    private long id_rg_faune;

    @Enumerated(EnumType.STRING)
    @Column(name = "situation")
    private situation situation;

    @Enumerated(EnumType.STRING)
    @Column(name = "type")
    private type_animal type;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn
    private Rg rg;

    @Column(name="regne")
    private String regne;

    protected Rg_faune() {

    }
    public Rg_faune(situation situation, type_animal type, Rg id_rg) {
        this.situation = situation;
        this.type = type;
        this.rg = id_rg;
        this.rg.setRg_faune(this);
        this.regne="Animal";
    }

    public Rg_faune(
            Long id_rg_f,
            situation situation, type_animal type, Rg id_rg) {
        this.id_rg_faune=id_rg_f;
        this.situation = situation;
        this.type = type;
        this.rg = id_rg;
        this.rg.setRg_faune(this);
        this.regne="Animal";
    }

    public long getId_rg_faune() {
        return id_rg_faune;
    }

    public void setId_rg_faune(long id_rg_faune) {
        this.id_rg_faune = id_rg_faune;
    }

    public situation getSituation() {
        return situation;
    }

    public void setSituation(situation situation) {
        this.situation = situation;
    }

    public type_animal getType() {
        return type;
    }

    public void setType(type_animal type) {
        this.type = type;
    }

    public Rg getRg() {
        return rg;
    }

    public void setRg(Rg rg) {
        this.rg = rg;
    }

    public String getRegne() {
        return regne;
    }

    public void setRegne(String regne) {
        this.regne = regne;
    }

    @Override
    public int compareTo(Rg_faune other) {
        return new Long(this.getId_rg_faune()).compareTo(new Long(other.getId_rg_faune()));

    }
}