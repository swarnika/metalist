package com;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware 
{
	SessionMap<String, Object> sessionMap;

	@Override
	public void setSession(Map<String, Object> map) {
	sessionMap=(SessionMap<String, Object>)map;
	}
	
	@Override
	public String execute() throws Exception
	{
	
		sessionMap.invalidate();
		return SUCCESS;
	}

}
