package com;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordAction extends ActionSupport implements SessionAware
{
	private String currentpass;
	private String dbPass;
	private String newpass;
	private String confirmpass;
	private String sessionEmail;
	private String decPassword;
	Blob key;
	
	SessionMap<String, Object> sessionMap;
	
	public String getCurrentpass() {
		return currentpass;
	}

	public void setCurrentpass(String currentpass) {
		this.currentpass = currentpass;
	}

	public String getNewpass() {
		return newpass;
	}

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}

	public String getConfirmpass() {
		return confirmpass;
	}

	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}

	@Override
	public String execute() throws Exception
	{
		// To Insert Into Database
		sessionEmail = (String) sessionMap.get("sessionEmail");
		MyConnection mycon = new MyConnection();
		Connection con = mycon.getConnection();

		PreparedStatement pstm = con.prepareStatement("select *from registeration where email=? and status='Enabled'");
		pstm.setString(1, sessionEmail);
		ResultSet rs = pstm.executeQuery();
		if (rs.next())
		{
			dbPass = rs.getString(3);
			key=rs.getBlob(16);
		}
		pstm.executeUpdate();
		
		//to decrypt password
		EncryptionDecryption ed = new EncryptionDecryption(dbPass, key);
		EncryptionDecryption ed1 = new EncryptionDecryption(newpass);
		decPassword =ed.getDecryptedData();

		Emailer mail=new Emailer();
		if (decPassword.equals(currentpass))
		{

			PreparedStatement pstm1 = con.prepareStatement("update registeration set pass=?,key=? where email=? and status='Enabled'");

			pstm1.setString(1, ed1.getEncryptedData());
			pstm1.setObject(2, ed1.getSecretKey());
			pstm1.setString(3, sessionEmail);
			pstm1.executeUpdate();
			

			 String check=mail.toMailChangedPass(sessionEmail, newpass);
			 if(check.equalsIgnoreCase("success"))
			 {
				 System.out.println("Your password is send");
			
				return SUCCESS;
			 }				
			 con.close();
		}
		return "error";
	}

	public void setSession(Map<String, Object> map)
	{
		sessionMap=(SessionMap)map;	
	}
}
