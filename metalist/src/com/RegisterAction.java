package com;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Random;

import javax.print.DocFlavor.INPUT_STREAM;

import com.opensymphony.xwork2.ActionSupport;


public class RegisterAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String uname;
	private String email;
	private String pass;
	private String cpass;
	private String companyname;
	private String qualification;
	private String collage;
	private String location;
	private String details;
	private String dob;
	private String cno;
	private String address;
	private String gen;
	private File profileImage;
	private String profileImageContentType;
	private String profileImageFileName;
	private String status="disable";

	 //Object creation of class which is responsible for email
	EmailerConfirmReg mail=new EmailerConfirmReg();
	
	//To Find system date and time
 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
 
java.util.Date date=new java.util.Date();
java.sql.Date regDate=new java.sql.Date(date.getTime());
   

public String getProfileImageContentType() {
	return profileImageContentType;
}

public void setProfileImageContentType(String profileImageContentType) {
	this.profileImageContentType = profileImageContentType;
}

public String getProfileImageFileName() {
	return profileImageFileName;
}

public void setProfileImageFileName(String profileImageFileName) {
	this.profileImageFileName = profileImageFileName;
}

public File getProfileImage() {
	return profileImage;
}

public void setProfileImage(File profileImage) {
	this.profileImage = profileImage;
}

	public String getDetails()
	{
	return details;
}

public void setDetails(String details) {
	this.details = details;
}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob)
	{
		this.dob = dob;
	}

	public String getCno()
	{
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGen() {
		return gen;
	}

	public void setGen(String gen) {
		this.gen = gen;
	}

	private INPUT_STREAM photo;
	Validation vl = new Validation();
	public INPUT_STREAM getPhoto() {
		return photo;
	}

	public void setPhoto(INPUT_STREAM photo) {
		this.photo = photo;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getCollage() {
		return collage;
	}

	public void setCollage(String collage) {
		this.collage = collage;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}



    @Override
	public void validate() {
			System.out.println("uname" + email);
			if (getUname().length()<1|| getEmail().length()<1|| getPass().length()<1||getCpass().length()<1||details.equals("Select") ||getLocation().length()<1)
					{
             addActionError("please fill the mandatory fields");
			}
			else if(uname.length()>20)
			{				
				addActionError("User name is not more then 20 characters");
			}
			else if(pass.length()<6)
			{				
				addActionError("password length should be greater then 6");
			}
			else if(pass.length()>10)
			{				
				addActionError("password length should be less then 10");
			}
			else if(!vl.isEmailValid(email))
			{
				addActionError("please correct the email");					
			}
			else if (!cpass.equals(pass)) 
			{
				addActionError("confirm password do not match with password");
			}
			else if (!cpass.equals(pass)) 
			{
				addActionError("confirm password do not match with password");
			}
			else if(!vl.mobileNo(cno))
			{
				addActionError("please enter correct mobile no");					
			}

	}

    public String execute() throws Exception 
	{	//Generate randome no
		int randomInt=2210;
		Random randomGen = new Random();
	    for (int idx = 1; idx <= 5; ++idx)
	    {
	      randomInt = randomGen.nextInt(32767);
	    }
	      String random=email+""+randomInt;
	      InputStream fileInput = new FileInputStream(profileImage);
		//To Insert Into Database 
	    MyConnection mycon=new MyConnection();
		Connection con=mycon.getConnection();	
		EncryptionDecryption ed = new EncryptionDecryption(pass);
		PreparedStatement pstm= con.prepareStatement("insert into registeration values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstm.setString(1,uname);
		pstm.setString(2,email);
		pstm.setString(3, ed.getEncryptedData());
	    //pstm.setString(3,pass);
		pstm.setString(4,details);	
		pstm.setString(5,companyname);
		pstm.setString(6,qualification);
		pstm.setString(7,collage);
		pstm.setString(8,location);
		pstm.setString(9,dob);
		pstm.setString(10,cno);
		pstm.setString(11,address);
		pstm.setString(12,gen);
		pstm.setDate(13,regDate);
		pstm.setString(14,random);
		pstm.setString(15,status);
		pstm.setObject(16, ed.getSecretKey());
	    pstm.setBinaryStream(17, fileInput, (int) profileImage.length());
		pstm.executeUpdate();
	 	con.close(); 
	 	System.out.println("Insert successfuly");
	 	
	 	//Code to mail for confirmation
	 	String confirmMail=mail.mailExecute(email, random);
	 	if(confirmMail.equalsIgnoreCase("success"))
	 	{	System.out.println();
	 		System.out.println();
	 		System.out.println("ur mail is send");
	 		System.out.println();
	 		System.out.println();
	 	}
	 	else
	 	{
	 		System.out.println();
	 		System.out.println();
	 		System.out.println("ur mail is send");
	 		System.out.println();
	 		System.out.println();

	 	}
	 	return SUCCESS;
	}

	}
