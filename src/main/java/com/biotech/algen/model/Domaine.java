
package com.biotech.algen.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "domaine")
public class Domaine {
    private static final long serialVersionUID = -10384930020L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "designation")
    private String designation;


    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "domaines")
    private List<Institution> institutions;

    public static long getSerialVersionUID() {
        return serialVersionUID;
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

    public List<Institution> getInstitutions() {
        return institutions;
    }

    public void setInstitutions(List<Institution> institutions) {
        this.institutions = institutions;
    }
}
