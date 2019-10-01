package com.biotech.algen.repository;

import com.biotech.algen.model.ProcTraditionnel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProcTraditionnelRepository extends CrudRepository<ProcTraditionnel, Long> {

    @Query(value = "select DISTINCT proc from ProcTraditionnel proc left join proc.rg rg where  upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<ProcTraditionnel> findByRgNomOrNomScientifique(String nom);
}



