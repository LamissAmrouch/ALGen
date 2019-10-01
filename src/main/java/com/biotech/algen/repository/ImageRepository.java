
package com.biotech.algen.repository;

import com.biotech.algen.model.Image;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ImageRepository extends PagingAndSortingRepository<Image, Long> {

	public Image findByName(String name);

}
