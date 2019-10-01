package com.biotech.algen.repository;


import com.biotech.algen.model.Classification;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClassificationRepository extends CrudRepository<Classification, Long> {



}



