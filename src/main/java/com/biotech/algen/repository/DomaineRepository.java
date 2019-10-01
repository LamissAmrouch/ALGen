
package com.biotech.algen.repository;

import com.biotech.algen.model.Domaine;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DomaineRepository extends CrudRepository<Domaine,Long> {
}

