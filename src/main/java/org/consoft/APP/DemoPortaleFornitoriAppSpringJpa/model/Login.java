/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model;

/**
 * @author Denilson
 */
public class Login {

	private String p_Iva;
	private String passw;
			
	public Login() {}
	
	public Login(String p_Iva, String passw) 
	{
		this.p_Iva = p_Iva;
		this.passw = passw;
	}
	
	public String getP_Iva() {
		return p_Iva;
	}
	public void setP_Iva(String p_Iva) {
		this.p_Iva = p_Iva;
	}
	public String getPassw() {
		return passw;
	}
	public void setPassw(String passw) {
		this.passw = passw;
	}

	
}
