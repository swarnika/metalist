package com;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoingMailAction extends ActionSupport implements SessionAware{
	SessionMap<String, Object> sessionMap;

	public void setSession(Map<String, Object> map)
	{
		sessionMap=(SessionMap)map;	
	}
	private String sessionEmail;
	
	@Override
	public String execute() throws Exception {
		sessionEmail = (String) sessionMap.get("sessionEmail");
		Emailer mail=new Emailer();
		mail.goingMailSend(sessionEmail);
		return SUCCESS;
	}
}
