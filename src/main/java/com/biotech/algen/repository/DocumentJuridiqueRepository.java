package com.biotech.algen.repository;

import com.biotech.algen.model.DocumentJuridique;
import com.biotech.algen.model.Rg;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;

@Repository
public interface DocumentJuridiqueRepository extends CrudRepository<DocumentJuridique,Long> {

    @Query(value = "select a from DocumentJuridique a, Rg r where r MEMBER OF a.rgs and upper(r.nom) like ?1% ")
    public List<DocumentJuridique> findByRgName(String name);

    @Query(value = "select a from DocumentJuridique a, Rg_faune r where r MEMBER OF a.rgs")
    public List<DocumentJuridique> findByRg_faune();

    @Query(value = "select a from DocumentJuridique a, Rg_forest r where r MEMBER OF a.rgs")
    public List<DocumentJuridique> findByRg_forest();

    @Query(value = "select a from DocumentJuridique a, Rg_marine r where r MEMBER OF a.rgs")
    public List<DocumentJuridique> findByRg_marine();

    @Query(value = "select a from DocumentJuridique a, Rg_alimagricol r where r MEMBER OF a.rgs")
    public List<DocumentJuridique> findByRg_alimagricol();

    @Query(value = "select a from DocumentJuridique a, Rg_micro_org r where r MEMBER OF a.rgs")
    public List<DocumentJuridique> findByRg_micro_org();

    @Query(value = "select a from DocumentJuridique a where a.date_sortie >= ?1 and a.date_sortie <= ?2")
    public List<DocumentJuridique> findAllByDate_sortieBetween(Date d1,Date d2);

    @Query(value = "select a from DocumentJuridique a where a.date_sortie = ?1")
    public List<DocumentJuridique> findAllByDate_sortie(Date date_sortie);


}
