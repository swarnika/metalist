package com;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

public class EmailerConfirmReg {

	private String from = "yswarnika26@gmail.com";
	private String password = "8827563788";
	private String to;
	private String subject = "Dear";
	private String body;
	private String randomNo;
	public String data;

	static Properties properties = new Properties();
	static {
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");
	}

	public String mailExecute(String email, String randomNo) {
		String ret = "success";
		this.to = email;
		this.randomNo = randomNo;
		data = this.randomNo;
		try {
			Session session = Session.getDefaultInstance(properties,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(from, password);
						}
					});

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText("Dear Customer,"+"\n"+"Thanks for registering with us.Please click on given below confirmation link. "
					+ "\n"
					+ "http://localhost:8085/metalist/confirmRegister?data="
					+ randomNo + "\n" + "Regards," + "\n" + "Metalist");
			Transport.send(message);
		} catch (Exception e) {
			ret = "ERROR";
			e.printStackTrace();
		}
		return ret;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public static Properties getProperties() {
		return properties;
	}

	public static void setProperties(Properties properties) {
		EmailerConfirmReg.properties = properties;
	}

}