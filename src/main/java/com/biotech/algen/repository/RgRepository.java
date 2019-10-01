package com.biotech.algen.repository;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_micro_org;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RgRepository extends CrudRepository<Rg,Long> {

    @Query(value = "select DISTINCT rg from Rg rg where upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<Rg> findByNomOrNomscientAll(String nom);

}
