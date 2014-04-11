package com;

import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.scribe.builder.ServiceBuilder;
import org.scribe.builder.api.FacebookApi;
import org.scribe.model.OAuthRequest;
import org.scribe.model.Response;
import org.scribe.model.Token;
import org.scribe.model.Verb;
import org.scribe.model.Verifier;
import org.scribe.oauth.OAuthService;

import com.opensymphony.xwork2.ActionSupport;

import java.io.IOException;
import java.sql.Date;
import java.util.Scanner;

public class FBOAuthCallback extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	
	private static final String NETWORK_NAME = "Facebook";
	private static final String PROTECTED_RESOURCE_URL = "https://graph.facebook.com/me";
	private static final Token EMPTY_TOKEN = null;
	
	private static OAuthService service=null;
	private String authorizationUrl = null;
	private String code;

	private String mail;

	private JSONTokener body;
	
	public String execute() throws Exception
	{
		Verifier verifier = new Verifier(code);
		System.out.println();
		
		// Trade the Request Token and Verfier for the Access Token
		System.out.println("Trading the Request Token for an Access Token...");
		Token accessToken = service.getAccessToken(EMPTY_TOKEN, verifier);
		System.out.println("Got the Access Token!");
		System.out.println("(if your curious it looks like this: " + accessToken + " )");
		System.out.println();
		
		// Now let's go and ask for a protected resource!
		System.out.println("Now we're going to access a protected resource...");
		OAuthRequest request = new OAuthRequest(Verb.GET, PROTECTED_RESOURCE_URL);
		service.signRequest(accessToken, request);
		Response response = request.send();
		System.out.println("Got it! Lets see what we found...");
		System.out.println();
		response.isSuccessful();
		System.out.println(response.getCode());
		System.out.println(response.getBody());
		JSONObject json = new JSONObject(body);
		String fieldNames[] = JSONObject.getNames(json);
		 
		for (String fieldName : fieldNames) 
		{
		  if(fieldName.equalsIgnoreCase("email"))
		  {
			System.out.println("fieldName: "+fieldName);
			mail=(String) json.get(fieldName);
			System.out.println("fieldData: "+json.get(fieldName));
			System.out.println(mail);
		}
		}
		
		
		System.out.println();
		System.out.println("headers");
				
		
		System.out.println();
		System.out.println("Thats it man! Go and build something awesome with Scribe! :)");
		
		return SUCCESS;
	}
	
	public String setup() throws IOException
	{
		// Replace these with your own api key and secret
		String apiKey = "599702856781217";
		String apiSecret = "0cabb0853153a9706b099baeb9d36e45";
		String callback = "http://localhost:8085/metalist/fboauthcallback";
		service = new ServiceBuilder().provider(FacebookApi.class).apiKey(apiKey).apiSecret(apiSecret).callback(callback).scope("email").build();
		Scanner in = new Scanner(System.in);
		
		System.out.println("=== " + NETWORK_NAME + "'s OAuth Workflow ===");
		System.out.println();
		
		// Obtain the Authorization URL
		System.out.println("Fetching the Authorization URL...");
		authorizationUrl = service.getAuthorizationUrl(EMPTY_TOKEN);
		System.out.println("Got the Authorization URL!");
		System.out.println("Now go and authorize Scribe here:");
		System.out.println(authorizationUrl);
		System.out.println("And paste the authorization code here");
		System.out.print(">>");
		ServletActionContext.getResponse().sendRedirect(authorizationUrl);
		return SUCCESS;
	}

	public String getAuthorizationUrl()
	{
		return authorizationUrl;
	}

	public void setAuthorizationUrl(String authorizationUrl)
	{
		this.authorizationUrl = authorizationUrl;
	}

	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}
	
}