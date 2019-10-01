package com.biotech.algen.model;


import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "rg")
public class Rg implements Serializable,Comparable<Rg> {
    @Id
    private long id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "nomscient")
    private String nomscient;

    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    @Column(name = "created_at",updatable = false)
    private Date createdAt;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "updated_at")
    @LastModifiedDate
    private Date updatedAt;

    @Column(name = "description")
    private String description;

    @Column(name = "lien_photo")
    private String lien_photo;
    
    @Column(name = "biotope")
    private String biotope;

    @Column(name = "aliment")
    private String aliment;

    @Column(name = "cle_identification")
    private String cle_identification;

    @Column(name = "reproduction")
    private String reproduction;

    @Column(name = "zonegeo")
    private String zonegeo;

    @OneToOne(mappedBy = "rg")
    private Rg_forest rg_forest;

    @OneToOne(mappedBy = "rg")
    private Rg_alimagricol rg_alimagricol;

    @OneToOne(mappedBy = "rg")
    private Rg_marine rg_marine;

    @OneToOne(mappedBy = "rg")
    private Rg_faune rg_faune;

    @OneToOne(mappedBy = "rg")
    private Rg_micro_org rg_micro_org;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_classification")
    private Classification classification;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "rgs", cascade = {CascadeType.ALL})
    private List<DocumentJuridique> documentJuridiques;

    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            mappedBy = "rg")
    private List<ProcTraditionnel> procTraditionnel = new ArrayList<>();

    @Column(name = "type")
    private Integer Type;

    protected Rg() {

    }

    public Rg(long id,
              String nom,
              String nomScient,
              String description,
              String lien_photo,
              String biotope,
              String aliment,
              String cle_identification,
              String reproduction,
              String zonegeo,
              Classification id_classification) {
        this.id = id;
        this.lien_photo=lien_photo;
        this.nom = nom;
        this.nomscient= nomScient;
        this.description = description;
        this.biotope = biotope;
        this.aliment = aliment;
        this.cle_identification = cle_identification;
        this.reproduction = reproduction;
        this.zonegeo = zonegeo;
        this.Type = 0;
        this.classification=id_classification;
    }

    public Classification getClassification() {
        return classification;
    }

    public void setClassification(Classification classification) {
        this.classification = classification;
    }


    public String getNomscient() {
        return nomscient;
    }

    public void setNomscient(String nomscient) {
        this.nomscient = nomscient;
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

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getDescription() {
        return description;
    }

    public String getAliment() {
        return aliment;
    }

    public void setAliment(String aliment) {
        this.aliment = aliment;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBiotope() {
        return biotope;
    }

    public void setBiotope(String biotope) {
        this.biotope = biotope;
    }

    public String getCle_identification() {
        return cle_identification;
    }

    public void setCle_identification(String cle_identification) {
        this.cle_identification = cle_identification;
    }

    public String getReproduction() {
        return reproduction;
    }

    public void setReproduction(String reproduction) {
        this.reproduction = reproduction;
    }

    public String getZonegeo() {
        return zonegeo;
    }

    public void setZonegeo(String zonegeo) {
        this.zonegeo = zonegeo;
    }

    public Rg_forest getRg_forest() {
        return rg_forest;
    }

    public void setRg_forest(Rg_forest rg_forest) {
        this.rg_forest = rg_forest;
    }

    public Rg_alimagricol getRg_alimagricol() {
        return rg_alimagricol;
    }

    public void setRg_alimagricol(Rg_alimagricol rg_alimagricol) {
        this.rg_alimagricol = rg_alimagricol;
    }

    public Rg_marine getRg_marine() {
        return rg_marine;
    }

    public void setRg_marine(Rg_marine rg_marine) {
        this.rg_marine = rg_marine;
    }

    public Rg_faune getRg_faune() {
        return rg_faune;
    }

    public void setRg_faune(Rg_faune rg_faune) {
        this.rg_faune = rg_faune;
    }

    public Rg_micro_org getRg_micro_org() {
        return rg_micro_org;
    }

    public void setRg_micro_org(Rg_micro_org rg_micro_org) {
        this.rg_micro_org = rg_micro_org;
    }

    public List<DocumentJuridique> getDocumentJuridiques() {
        return documentJuridiques;
    }

    public void setDocumentJuridiques(List<DocumentJuridique> documentJuridiques) {
        this.documentJuridiques = documentJuridiques;
    }

    public List<ProcTraditionnel> getProcTraditionnel() {
        return procTraditionnel;
    }

    public void setProcTraditionnel(List<ProcTraditionnel> procTraditionnel) {
        this.procTraditionnel = procTraditionnel;
    }

    public Integer getType() {
        return Type;
    }

    public void setType(Integer type) {
        Type = type;
    }
    
    
    public void setLien_photo(String lien_photo) { this.lien_photo = lien_photo; }

    public String getLien_photo() { return lien_photo; }

    @Override
    public int compareTo(Rg other) {
        return new Long(this.getId()).compareTo(new Long(other.getId()));

    }
}
