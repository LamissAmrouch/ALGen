package com.biotech.algen.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "mot_cle_doc_juri")
public class MotCle_DocJuri {
    @Id
    @Column(name = "mot_cle")
    private String motCle;

    @ManyToMany(fetch = FetchType.LAZY,mappedBy = "motsCles", cascade = {CascadeType.ALL})
    private List<DocumentJuridique> docs;

    public MotCle_DocJuri(){
        super();
    }

    public MotCle_DocJuri(String motCle){
        this.motCle = motCle;
    }

    public MotCle_DocJuri(String motCle, List<DocumentJuridique> docs){
        this.docs = docs;
        this.motCle = motCle;
    }

    public String getMotCle() {
        return motCle;
    }

    public void setMotCle(String motCle) {
        this.motCle = motCle;
    }

    public List<DocumentJuridique> getDocs() {
        return docs;
    }

    public void setDocs(List<DocumentJuridique> docs) {
        this.docs = docs;
    }

    @Override
    public String toString(){
        return this.getMotCle();
    }
}
