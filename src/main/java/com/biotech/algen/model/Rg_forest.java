package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "rg_forest")
public class Rg_forest implements Serializable,Comparable<Rg_forest> {
    @Id
    @Column(name = "id_rg_forest")
    private long id_rg_forest;

    @Column(name = "parties_utilises")
    private String parties_utilises;

    @Enumerated(EnumType.STRING)
    @Column(name = "type_forest")
    private com.biotech.algen.model.type_forest type_forest;

    @Column(name = "constituants")
    private String constituants;

    @Column(name = "usage")
    private String usage;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn
    private Rg rg;

    @Column(name="regne")
    private String regne;

    protected Rg_forest() {

    }

    public Rg_forest(String parties_utilises,
                     com.biotech.algen.model.type_forest type_forest,
                     String constituants,
                     String usage,
                     Rg id_rg) {
        this.parties_utilises = parties_utilises;
        this.type_forest = type_forest;
        this.constituants = constituants;
        this.usage = usage;
        this.rg = id_rg;
        this.rg.setRg_forest(this);
        this.regne= "Plante";
    }

    public Rg_forest(
            Long id_rg_f,
            String parties_utilises,
                     com.biotech.algen.model.type_forest type_forest,
                     String constituants,
                     String usage,
                     Rg id_rg) {
        this.id_rg_forest=id_rg_f;
        this.parties_utilises = parties_utilises;
        this.type_forest = type_forest;
        this.constituants = constituants;
        this.usage = usage;
        this.rg = id_rg;
        this.rg.setRg_forest(this);
        this.regne= "Plante";
    }

    public String getRegne() {
        return regne;
    }

    public void setRegne(String regne) {
        this.regne = regne;
    }

    public long getId_rg_forest() {
        return id_rg_forest;
    }

    public void setId_rg_forest(long id_rg_forest) {
        this.id_rg_forest = id_rg_forest;
    }

    public String getParties_utilises() {
        return parties_utilises;
    }

    public void setParties_utilises(String parties_utilises) {
        this.parties_utilises = parties_utilises;
    }

    public com.biotech.algen.model.type_forest getType_forest() {
        return type_forest;
    }

    public void setType_forest(com.biotech.algen.model.type_forest type_forest) {
        this.type_forest = type_forest;
    }

    public String getConstituants() {
        return constituants;
    }

    public void setConstituants(String constituants) {
        this.constituants = constituants;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public Rg getRg() {
        return rg;
    }

    public void setRg(Rg rg) {
        this.rg = rg;
    }

    @Override
    public int compareTo(Rg_forest other) {
        return new Long(this.getId_rg_forest()).compareTo(new Long(other.getId_rg_forest()));

    }
}