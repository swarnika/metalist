package com;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.commons.lang.xwork.Validate;

import com.opensymphony.xwork2.ActionSupport;

public class ForgetAction extends ActionSupport{
	private String forgetpass;
	private String password;
	Validation vl=new Validation();
	private String pwd;
	Blob key;
	private String checkpass;
	
	private String status;
	 public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

		//Object creation of class which is responsible for email
		Emailer mail=new Emailer();
		
	public String getForgetpass() {
		return forgetpass;
	}

	public void setForgetpass(String forgetpass) {
		this.forgetpass = forgetpass;
	}
	@Override
	public void validate() {
		if(!vl.isEmailValid(forgetpass))
		{
			addFieldError("forgetpass", "please correct the email");					
		}	
		else if(forgetpass.length()<1)
		{
			addFieldError("forgetpass", "please the enter email");
			
		}
	}
	
	@Override
	public String execute() throws Exception {
		
		
		MyConnection mycon=new MyConnection();
		Connection con=mycon.getConnection();
		
		PreparedStatement pstm= con.prepareStatement("select *from REGISTERATION where email=?");
		pstm.setString(1, forgetpass);
		ResultSet rs=pstm.executeQuery();
		if(rs.next())
		{	
		pwd = rs.getString(3);
		key=rs.getBlob(16);
		}
		EncryptionDecryption ed = new EncryptionDecryption(pwd, key);
		 pstm.executeUpdate();
		 checkpass = ed.getDecryptedData();
		 con.close();  
		
		 String check=mail.mailExecute(forgetpass, checkpass);
		if(check.equalsIgnoreCase("success"))
				
			{
			return SUCCESS;
			}
			else
			{
			return "error" ;
			}		

	}
	
}
