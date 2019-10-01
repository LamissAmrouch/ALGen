package com.biotech.algen.model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Entity
@Table(name = "role")
public class Role implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "description")
    private String description;

    @ManyToMany(mappedBy = "roles",fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<User> users = new ArrayList<>();


    protected Role(){

    }

    public Role(String description) {
        this.description=description;
    }

    public Role(Long id, String description) {
        this.description=description;
        this.id=id;
    }

    public Long getId() { return id; }

    public String getDescription() {
        return description;
    }

    public List<User> getUsers() { return users; }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUsers(List<User> users) { this.users = users; }

    public void setId(long id) {
        this.id = id;
    }
}
