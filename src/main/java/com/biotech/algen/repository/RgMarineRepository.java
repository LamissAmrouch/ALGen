package com.biotech.algen.repository;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_marine;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RgMarineRepository extends CrudRepository<Rg_marine,Long> {
    Rg_marine findRg_marineByRg(Rg rg);
    void deleteRg_marineByRg(Rg rg);

    @Query(value = "select DISTINCT rg from Rg_marine rg_marine left join rg_marine.rg rg where  upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<Rg> findRgByNomOrNomscientAll(String nom);
}
