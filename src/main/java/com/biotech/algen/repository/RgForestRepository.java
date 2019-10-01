package com.biotech.algen.repository;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_forest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RgForestRepository extends CrudRepository<Rg_forest,Long> {
    Rg_forest findRg_forestByRg(Rg rg);
    void deleteRg_forestByRg(Rg rg);

    @Query(value = "select DISTINCT rg from Rg_forest rg_forest left join rg_forest.rg rg where  upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<Rg> findRgByNomOrNomscientAll(String nom);
}
