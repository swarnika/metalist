<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.maindiv
{
width: 100%;
height: 100%;
padding-top:200px;
padding-left:400px;

}
.successdiv
{
width:500px;
height:200px;
border: 2px solid black;
border-radius:14px;
background-color: #d0d0d0;
}
a{text-decoration: none;}
</style>
</head>
<body>
<s:div cssClass="maindiv">
<s:div cssClass="successdiv">
<s:a href="goalzone.jsp" cssStyle="float:right;padding-top:10px;padding-right:10px;"><h3><< Back</h3></s:a>
<h3 style="color:red;text-align: center;padding-top:80px;">Dear user,<br>your invitation is send to your friend.</h3>

</s:div>
</s:div>
</body>
</html>