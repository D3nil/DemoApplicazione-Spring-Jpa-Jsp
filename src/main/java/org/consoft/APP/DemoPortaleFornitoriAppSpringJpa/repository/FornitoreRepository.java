/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.repository;

import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model.Fornitore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Denilson
 */
@Repository
public interface FornitoreRepository extends JpaRepository<Fornitore, Long> 
{
	
}
