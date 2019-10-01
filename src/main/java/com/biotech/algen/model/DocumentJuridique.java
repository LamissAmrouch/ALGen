package com.biotech.algen.model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "document_juridique")
public class DocumentJuridique implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "designation")
    private String designation;

    @Column(name = "date_sortie")
    private Date date_sortie;

    @Column(name = "chemin_doc")
    private String chemin_doc;

    @Column(name = "code")
    private String code;

    @Column(name = "meta_donnee")
    private String meta;

    @Column(name = "resume")
    private String resum;

    @Column(name = "version")
    private Double version;

    @Column(name = "abrogé")
    private Boolean abroge = false;

    @Column(name = "modif_abrogation")
    private String modif;


    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "possede_document_juridique",
            joinColumns = {@JoinColumn(name = "id_document_juridique", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "id_rg", referencedColumnName = "id")})
    private List<Rg> rgs;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "index_document_juridique",
            joinColumns = {@JoinColumn(name = "id_document_juridique", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "mot_cle", referencedColumnName = "mot_cle")})
    private List<MotCle_DocJuri> motsCles;

    public DocumentJuridique(){

    }
    public DocumentJuridique(String designation, Date date_sortie, String chemin_doc) {
        this.designation=designation;
        this.date_sortie=date_sortie;
        this.chemin_doc=chemin_doc;
    }

    @Override
    public String toString() {
        return "DocumentJuridique{" +
                "id=" + id +
                ", designation='" + designation + '\'' +
                ", date_sortie=" + date_sortie +
                ", chemin_doc='" + chemin_doc + '\'' +
                ", code='" + code + '\'' +
                ", meta='" + meta + '\'' +
                ", resum='" + resum + '\'' +
                ", version=" + version +
                ", abroge='" + abroge + '\'' +
                ", modif='" + modif + '\'' +
                ", motsClé=" + motsCles + '\'' +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public Date getDate_sortie() {
        return date_sortie;
    }

    public void setDate_sortie(Date date_sortie) {
        this.date_sortie = date_sortie;
    }

    public String getChemin_doc() {
        return chemin_doc;
    }

    public void setChemin_doc(String chemin_doc) {
        this.chemin_doc = chemin_doc;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMeta() {
        return meta;
    }

    public void setMeta(String meta) {
        this.meta = meta;
    }

    public String getResum() {
        return resum;
    }

    public void setResum(String resum) {
        this.resum = resum;
    }

    public Double getVersion() {
        return version;
    }

    public void setVersion(Double version) {
        this.version = version;
    }

    public Boolean getAbroge() {
        return abroge;
    }

    public void setAbroge(Boolean abroge) {
        this.abroge = abroge;
    }

    public String getModif() {
        return modif;
    }

    public void setModif(String modif) {
        this.modif = modif;
    }

    public List<Rg> getRgs() {
        return rgs;
    }

    public void setRgs(List<Rg> rgs) {
        this.rgs = rgs;
    }

    public List<MotCle_DocJuri> getMotsCles() {
        return motsCles;
    }

    public void setMotsCles(List<MotCle_DocJuri> motsCles) {
        this.motsCles = motsCles;
    }

    public void setDefaultChemin_doc(String extension){
        this.chemin_doc = this.code + "_" + this.date_sortie.toString() + "." + extension;
    }
}
