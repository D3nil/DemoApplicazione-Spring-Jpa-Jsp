/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.dao;

import javax.activation.DataSource;

import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model.Fornitore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

/**
 * @author Denilson
 */
@Component
public class FornitoreDAOImpl implements FornitoreDAO
{
	JdbcTemplate jt;
	private final String SQL_FIND_FORNITORE="select * from people where id=?";
	private final String SQL_AUTENTICATION_FORNITORE="select * from people where id=? and password =?";

	@Autowired
	public FornitoreDAOImpl(DataSource dataSource) 
	{	jt=new JdbcTemplate((javax.sql.DataSource) dataSource);	}
	
	@Override
	public Fornitore getFornitoreById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean createFornitore(Long id) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean LoginFornitore(String Iva, String passw) 
	{
		return true;
	}

}
