package com.biotech.algen.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "rg_micro_org")
public class Rg_micro_org implements Serializable,Comparable<Rg_micro_org> {
    @Id
    @Column(name = "id_rg_micro_org")
    private long id_rg_micro_org;

    @Column(name = "regne")
    private regne Regne;

    @Column(name = "est_Nocif")
    private Boolean Est_Nocif;

    @Enumerated(EnumType.STRING)
    @Column(name = "type")
    private type_microorganisme type;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn
    private Rg rg;

    protected Rg_micro_org() {

    }
    public Rg_micro_org(
                        regne regne,
                        Boolean est_Nocif,
                        type_microorganisme type,
                        Rg id_rg) {
        Regne = regne;
        Est_Nocif = est_Nocif;
        this.type = type;
        this.rg = id_rg;
        this.rg.setRg_micro_org(this);
    }

    public Rg_micro_org(
            Long id_rg_micro,
            regne regne,
            Boolean est_Nocif,
            type_microorganisme type,
            Rg id_rg) {
        Regne = regne;
        this.id_rg_micro_org=id_rg_micro;
        Est_Nocif = est_Nocif;
        this.type = type;
        this.rg = id_rg;
        this.rg.setRg_micro_org(this);
        System.out.println("RG is "+this.rg.getRg_micro_org());

    }

    public long getId_rg_micro_org() {
        return id_rg_micro_org;
    }

    public void setId_rg_micro_org(long id_rg_micro_org) {
        this.id_rg_micro_org = id_rg_micro_org;
    }

    public regne getRegne() {
        return Regne;
    }

    public void setRegne(regne regne) {
        Regne = regne;
    }

    public Boolean getEst_Nocif() {
        return Est_Nocif;
    }

    public void setEst_Nocif(Boolean est_Nocif) {
        Est_Nocif = est_Nocif;
    }

    public type_microorganisme getType() {
        return type;
    }

    public void setType(type_microorganisme type) {
        this.type = type;
    }

    public Rg getRg() {
        return rg;
    }

    public void setRg(Rg rg) {
        this.rg = rg;
    }
    @Override
    public int compareTo(Rg_micro_org other) {
        return new Long(this.getId_rg_micro_org()).compareTo(new Long(other.getId_rg_micro_org()));

    }

}