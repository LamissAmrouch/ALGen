package com.biotech.algen.repository;

import com.biotech.algen.model.Rg;
import com.biotech.algen.model.Rg_alimagricol;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RgAlimagricolRepository extends CrudRepository<Rg_alimagricol,Long> {
    Rg_alimagricol findRg_alimagricolByRg(Rg rg);
    void deleteRg_alimagricolByRg(Rg rg);

    @Query(value = "select DISTINCT rg from Rg_alimagricol rg_alimagricol left join rg_alimagricol.rg rg where  upper(rg.nom)  like ?1%  or upper(rg.nomscient) like ?1%")
    List<Rg> findRgByNomOrNomscientAll(String nom);
}
