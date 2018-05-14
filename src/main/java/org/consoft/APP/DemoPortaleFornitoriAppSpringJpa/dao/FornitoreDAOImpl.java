/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model.Fornitore;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

/**
 * @author Denilson
 */
@Component
public class FornitoreDAOImpl implements FornitoreDAO {
	JdbcTemplate jTemp;
//	private final String SQL_FIND_FORNITORE = "select * from people where id=?";
//	private final String SQL_AUTENTICATION_FORNITORE = "select * from people where id=? and password =?";

	@Override
	public Fornitore getFornitoreById(Long id) 
	{
		return null;
	}

	@Override
	public boolean createFornitore(Long id) 
	{
		return false;
	}

	public Object validateFornitore(String P_iva,String passw) 
	{		
		String query="Select vw_bodyrentalvendor.name,fornitore_passw.vw_rental_vendor_id_fk "+
				"FROM vw_bodyrentalvendor INNER JOIN "+ 
				"fornitore_passw ON "+
			    "vw_bodyrentalvendor.vw_rental_vendor_id= fornitore_passw.vw_rental_vendor_id_fk "+
			    "WHERE vw_bodyrentalvendor.vatregistration_no_='"+P_iva+"'"+
			    "AND fornitore_passw.password='"+passw+"'";		
//	   	    String sql = "select * from users where username='" +
//	    	dati_da_validare.getUsername() +"' and password='" +
//	    	dati_da_validare.getPassword()+ "'";
		    List<Fornitore> fornitori = jTemp.query(query, new FornitoreMapper());
	    
		    return fornitori.size() > 0 ? fornitori.get(0) : null;
	}
	


}
	class FornitoreMapper implements RowMapper<Fornitore>{
	public Fornitore mapRow(ResultSet resulSet, int i) 
		throws SQLException
	{
		Fornitore f=new Fornitore();
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("VW_RentalVendor_Id"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Company"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("CompanyName_No_"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Name"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Name2"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Address"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Address2"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("City"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Post_Code"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Country_RegionCode"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("E_mail"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Phone_No_"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Fax_No_"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("VATRegistration_No_"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Blocked_Qualification"));
		f.setVW_BodyRentalVendor_Id(resulSet.getLong("Qualification_Notes"));		
		return f;
	}
	}


