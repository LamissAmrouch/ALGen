package com.biotech.algen.repository;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_micro_org;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RgMicroOrgRepository extends CrudRepository<Rg_micro_org,Long> {
    Rg_micro_org findRg_micro_orgByRg(Rg rg);
    void deleteRg_micro_orgByRg(Rg rg);

    @Query(value = "select DISTINCT rg from Rg_micro_org rg_micro_org left join rg_micro_org.rg rg where  upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<Rg> findRgByNomOrNomscientAll(String nom);
}
