package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.dao;

import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model.Fornitore;

/**
 * @author Denilson
 */
public interface FornitoreDAO 
{	Fornitore getFornitoreById(Long id);
	boolean createFornitore(Long id);
	Object validateFornitore(String P_iva, String passw);
}
