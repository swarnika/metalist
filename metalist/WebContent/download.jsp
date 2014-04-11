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
<script src="/metalist/js/upload.js"></script>
<link rel="stylesheet" href="/metalist/css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="\metalist\css\upload.css">
</head>
<body>
<s:div cssClass="maindiv3">
<s:form action="#" theme="simple">
<s:div cssClass="uploadpopup">
<s:div cssClass="uhead">Upload Data!!!
<s:div cssClass="cancel3"><img src="img/cancle2.png" width="100%" height="100%"/>
	</s:div>
	</s:div>
<table cellpadding="5px" style="padding-top:0px;padding-left:25px;">
<tr>
<td>
</td>
</tr>
<tr>
<td>
<s:div cssClass="uploadheader1">Upload Images</s:div>
</td>
</tr>
<tr>
<td>
<s:a cssClass="uploadheader1"> <s:file  name="imageupload" cssClass="imageupload"></s:file></s:a>
</td>
</tr>
<tr>
<td>
<s:div cssClass="uploadheader2">Upload video</s:div>
</td>
</tr>
<tr>
<td>
<s:file  name="videoupload" cssClass="videoupload"></s:file>
</td>
</tr>
<tr>
<td>
<s:div cssClass="uploadheader3">Upload pdf</s:div>
</td>
</tr>
<tr>
<td>
<s:file  name="pdfupload" cssClass="pdfupload"></s:file>
</td>
</tr>

</table>

</s:div>
</s:form>
		        
</s:div>

</body>
</html>