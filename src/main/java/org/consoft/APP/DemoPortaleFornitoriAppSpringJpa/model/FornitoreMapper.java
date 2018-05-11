/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

/**
 * @author Denilson
 */
public class FornitoreMapper implements RowMapper<Fornitore> {

	@Override
	public Fornitore mapRow(ResultSet resulSet, int i) 
			throws SQLException 
	{
		Fornitore f=new Fornitore();
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("VW_RentalVendor_Id"));
		
		return null;
	}

}
