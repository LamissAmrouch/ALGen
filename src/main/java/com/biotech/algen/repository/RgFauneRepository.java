package com.biotech.algen.repository;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_faune;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RgFauneRepository extends CrudRepository<Rg_faune,Long> {
    Rg_faune findRg_fauneByRg(Rg rg);
    void deleteRg_fauneByRg(Rg rg);

    @Query(value = "select DISTINCT rg from Rg_faune rg_faune left join rg_faune.rg rg where  upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<Rg> findRgByNomOrNomscientAll(String nom);
}
