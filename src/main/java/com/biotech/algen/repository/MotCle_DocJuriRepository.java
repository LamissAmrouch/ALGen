package com.biotech.algen.repository;

import com.biotech.algen.model.MotCle_DocJuri;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MotCle_DocJuriRepository extends CrudRepository<MotCle_DocJuri,String> {
    @Query(value = "select m from MotCle_DocJuri m  where upper(m.motCle) like %?1% ")
    List<MotCle_DocJuri> findByIdUpper(String motCle);
}
