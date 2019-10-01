package com.biotech.algen.repository;


import com.biotech.algen.model.Domaine;
import com.biotech.algen.model.Institution;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface InstitutionRepository extends CrudRepository<Institution, Long> {
    @Query(value = "select DISTINCT inst from Institution inst left join inst.domaines instDom where upper(inst.nom) like ?1%  and ( upper(inst.typeInstitution)  like ?2% or ?2 like 'ALL' ) and ( instDom in ?3 or ?4 = true) ")
    List<Institution> findByNomAndTypeAndDomaines(String nom, String type, Collection<Domaine> domaines, boolean colImpty);

}



