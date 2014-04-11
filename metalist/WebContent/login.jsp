<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="\metalist\css\loginsecond.css">
<script src="\metalist\JQuery\jquery-1.8.3.js"></script>
<script src="\metalist\JQuery\jquery-ui.js"></script>
<script src="\metalist\JQuery\index.js"></script>
<script>
$(window).load(function() {
	if ($('.login_page').find('.errorMessage').length) {

	}

	});

</script>
</head>
<body>
	<s:div cssClass="maindiv" id="main">
		<s:div cssClass="header">
			<s:div cssClass="logo">
				<img src="\metalist\img\weblist_logo.PNG" width="100%" height="100%">
			</s:div>
			<s:div cssClass="head">
				<img src="\metalist\img\wishbomb_sky.PNG" width="55%">
			</s:div>
		</s:div>
		<s:div cssClass="login_page">
			<s:div cssClass="uper">
				<marquee behavior="alternate">
					<h2>LOGIN</h2>
				</marquee>
			</s:div>
			
			<s:form action="slogin" theme="simple">

				<table width="200px" cellpadding="10px" height="70px" border="0"
					style="margin-left: 20px; margin-top: 30px;">
					<tr>
						<td><s:textfield cssClass="user_textbox" name="username"
								placeholder="Enter Email" /></td>
			            			
					</tr>
					<s:fielderror fieldName="uername"></s:fielderror>
					<tr>
						<td><s:password cssClass="pass_textbox" name="password"
								placeholder="Enter Password" /></td>
					</tr>
                    <s:fielderror fieldName="uername"></s:fielderror>
					<tr>
						<td><h5 style="padding-left: 110px;">
								<s:a cssClass="forget" href="pop.jsp">Forgot Password?</s:a>
							</h5></td>
					</tr>
					<tr>
						<td><h5 style="padding-left: 107px; margin-top: -40px;">
								<s:a cssClass="reg" href="registration" action="registration">Create an account</s:a>
							</h5></td>
					</tr>
					<tr>
						<td><s:checkbox name="ch" cssClass="ch"></s:checkbox> <s:label
								value="Remember me" cssClass="remember"></s:label></td>
					</tr>
				</table>
				<s:div cssClass="bottom">
					<s:submit value="Login" cssClass="log_btn"></s:submit>
					<s:reset value="Cancel" cssClass="rst_btn"></s:reset>
				</s:div>
			</s:form>
		</s:div>
	</s:div>
</body>
</html>