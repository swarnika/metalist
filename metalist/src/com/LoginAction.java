package com;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String dbPass;
	private String decPassword;
	Blob key;
	Validation vl = new Validation();

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	SessionMap<String, Object> sessionMap;
	LinkedHashMap<String, String> userData = new LinkedHashMap <String, String>();
	
	public void setSession(Map<String, Object> map) {
		sessionMap = (SessionMap<String, Object>) map;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("execute");

		MyConnection mycon = new MyConnection();
		Connection con = mycon.getConnection();

		PreparedStatement pstm = con
				.prepareStatement("select *from registeration where email=? and status='Enabled' ");
		pstm.setString(1, username);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {

			System.out.println("result");
			dbPass = rs.getString(3);
			key = rs.getBlob(16);

			// to decrypt loginPassword
			EncryptionDecryption ed = new EncryptionDecryption(dbPass, key);
			decPassword = ed.getDecryptedData();
			System.out.println();
			System.out.println();
			System.out.println(password + " == " + decPassword);
			System.out.println();
			System.out.println();
			System.out.println();
			
			if (password.equals(decPassword)) {

				userData.put("firstName", rs.getString(1));
				userData.put("email", rs.getString(2));
                sessionMap.put("userData", userData);
				sessionMap.put("sessionStatus", true);
				// code to set session
				sessionMap.put("sessionEmail", username);

				return SUCCESS;
			} else {
				addFieldError("username","Username or Password mismatched");
				return INPUT;
			}
		} else {
			addFieldError("username", "Username does not exist");
			return INPUT;
		}
	}

	public void validate() {
		System.out.println("username" + username);
		if (getUsername().length() < 1) {
			addFieldError("username", "please enter Email");
		} else if (getPassword().length() < 1) {
			addFieldError("password", "please enter password");
		} else if (!vl.isEmailValid(username)) {
			addFieldError("username", "please enter valid email");
		}

	}

}
