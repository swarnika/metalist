<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="/metalist/js/jquery-1.9.1.js"></script>
<script src="/metalist/js/jquery-ui.js"></script>
<script src="/metalist/js/slider.js"></script>
<link rel="stylesheet" href="/metalist/css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="\metalist\css\invitemeetup.css">

<style type="text/css">

</style>
</head>
<body>
<s:div cssClass="meetupmaindiv">
<s:form action="#" theme="simple">
<s:div cssClass="meetup">
<s:div cssClass="mhead">Invite friends for Meetups !!!
<s:div cssClass="meetupcancel"><img src="img/cancle2.png" width="100%" height="100%"/>
	</s:div>
	</s:div>
<table cellpadding="10px" style="padding-top:10px;padding-left:30px;">
<tr>
<td>
<h4 style="color: #1b4f88;">Invite your friends for attending meetups...</h4>
</td>
</tr>
<tr>
<td>
<s:textfield cssClass="meetupgoal" name="meetupgoal" placeholder="Enter friend's email address..."></s:textfield>
</td>
</tr>
</table>
<s:div cssClass="meetupbottom">
<tr>
<td>
<s:submit value="Post" cssClass="btn"></s:submit>
</td>
</tr> 
</s:div>
</s:div>
</s:form>
		        
</s:div>

</body>
</html>