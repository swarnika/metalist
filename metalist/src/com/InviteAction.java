package com;

import com.opensymphony.xwork2.ActionSupport;

public class InviteAction extends ActionSupport
{
	private String send;
	private String subject;
	private String message;
	
   public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

public String getSend() {
		return send;
	}

	public void setSend(String send) {
		this.send = send;
	}

    Emailer mail=new Emailer();
Validation vl=new Validation();

@Override
public String execute() throws Exception {
	 mail.InvitemailExecute(send,subject,message);

  return SUCCESS;
}
@Override
public void validate() {
	if(!vl.isEmailValid(send))
	{
		addFieldError("send", "please correct the email");					
	}	
	else if(send.length()<1)
	{
		addFieldError("send", "please the enter email");
		
	}
}
}