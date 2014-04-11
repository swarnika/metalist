<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="\metalist\css\registeration.css">
<link rel="stylesheet" href="/metalist/css/jquery-ui.css">
<script src="/metalist/js/jquery-1.9.1.js"></script>
<script src="/metalist/js/jquery-ui.js"></script>
<script src="/metalist/js/slider.js"></script>
<script src="/metalist/JQuery/jquery-1.8.3.js"></script>
<script src="/metalist/JQuery/jquery-ui.js"></script>
<script src="/metalist/JQuery/index.js"></script>

<style type="text/css">
.ui-widget-header .ui-icon 
{
		background: url("/metalist/images/right.png") center no-repeat;
}

</style>
</head>
<body>
<s:div cssClass="maindiv">
<s:div cssClass="header">
		         <s:div cssClass="logo"><img src="\metalist\img\weblist_logo.PNG" width="100%" height="100%"></s:div>
		         <s:div cssClass="head"><img src="\metalist\img\wishbomb_sky.PNG" width="55%"></s:div>
</s:div>	
<s:div cssClass="reg_page">
<s:div cssClass="uper"><marquee behavior="alternate"><h2>REGISTER YOUR SELF HERE!!</h2></marquee></s:div>
<s:form action="register2" method="post" enctype="multipart/form-data" theme="simple">
		      
		     <h4 style="color: red;text-align: center;"> <s:actionerror/></h4>
		    <table  border="0" cellpadding="5" cellspacing="5" style="margin-left:20px; margin-top: 20px;">
		      
		      <tr>
		      <td>*&nbsp;<s:label value="Name" /></td>
		      <td><s:textfield cssClass="name_textbox" name="uname" placeholder="Enter Your Name" /></td>
		      </tr>
		      <tr>
		      <td>*&nbsp;<s:label value="E-mail" /></td>
		      <td><s:textfield cssClass="name_textbox" name="email" placeholder="Enter Your Email" /></td>
		      </tr>
	           <tr>
		      <td>*&nbsp;<s:label value="Password" /></td>
		      <td><s:password cssClass="name_textbox" name="pass" placeholder="Enter Your Password" /></td>
		     
		      </tr>
		      <tr>
		      <td>*&nbsp;<s:label value="Confirm Password" /></td>
		      <td><s:password cssClass="name_textbox" name="cpass" placeholder="Re-enter Your Password" /></td>
		      </tr>
		      <tr>
		      <td>*&nbsp;<s:label value="Profession Details" /></td>
		      <td><s:select list="{'Select','Employee','Student'}" id="combo" cssStyle="height:35px; width:310px;outline: none;" cssClass="name_textbox" name="details"></s:select></td>
		      </tr>
		      <tr>
		      <td>&nbsp;&nbsp;<s:label value="Company Name" /></td>
		      <td><s:textfield cssClass="name_textbox" disabled="true" name="companyname" id="companyname" placeholder="Enter your company name" /></td>
		      </tr>
		      <tr>
		      <td>&nbsp;&nbsp;<s:label value="Highest Qualification" /></td>
		      <td><s:textfield cssClass="name_textbox" disabled="true" name="qualification" id="qualification" placeholder="Enter your Highest qualification" /></td>
		      </tr>
		       <tr>
		      <td>&nbsp;&nbsp;<s:label value="School/College" /></td>
		      <td><s:textfield cssClass="name_textbox" disabled="true" name="collage" id="college" placeholder="Enter your school/collage name" /></td>
		      </tr>
		      <tr>
		      <td>*&nbsp;<s:label value="Location" /></td>
		      <td><s:textfield cssClass="name_textbox" name="Location" id="Location" placeholder="Enter your location" /></td>
		      </tr>
              <tr>
		      <td>&nbsp;&nbsp;&nbsp;<s:label value="Date of Birth" /></td>
		      <td><s:textfield cssClass="name_textbox" name="dob" id="datepicker" placeholder="Enter Your DOB" /></td>
		      <tr>

		      <td>&nbsp;&nbsp;&nbsp;<s:label value="Contact Number"/></td>
		      <td><s:textfield cssClass="name_textbox" name="cno" placeholder="Enter Your contact no" /></td>
		      <tr>
		      <td>&nbsp;&nbsp;&nbsp;<s:label value="Address" /></td>
		      <td><s:textarea cssClass="name_textbox" name="address" placeholder="Enter your Address"/></td>
		      </tr>
		      <tr>
		      <td>&nbsp;&nbsp;&nbsp;<s:label value="Gender" /></td>
		      <td><s:radio name="gen" list="{'Male','Female'}"/></td>
		      </tr>
		      <tr>								
		      <td>*&nbsp;<s:label value="Upload Photo" /></td>
			  <td><s:file name="profileImage" accept="image/jpeg,image/jpg,image/png,image/gif"/></td>
		      </tr>

		      
		     </table> 		     
		     <s:div cssClass="bottom">
		     <s:submit value="Submit" cssClass="log_btn"></s:submit>
	         <s:reset value="Cancel" cssClass="rst_btn"></s:reset>
		     </s:div> 
		     </s:form>
</s:div>
</s:div>	         
</body>
</html>