<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="/metalist/js/jquery-1.9.1.js"></script>
<script src="/metalist/js/jquery-ui.js"></script>
<script src="/metalist/js/slider.js"></script>
<script src="\metalist\JQuery\jquery-1.8.3.js"></script>
<script src="\metalist\JQuery\jquery-ui.js"></script>
<script src="\metalist\JQuery\index.js"></script>
<link rel="stylesheet" href="/metalist/css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="\metalist\css\home.css">
<link rel="stylesheet" type="text/css" href="\metalist\css\setgoal.css">
<title>Insert title here</title>
<script>
$(window).load(function() {

	$('.maindiv2').hide();
	$('#main').css('opacity', '1');
});

$(document).ready(function()
		{
    $('.goal').click(function (event)
		    {$('.maindiv2').show();
		    $('#main').css('opacity','0.2');
		   		    });
	$('.cancel').click(function (event)
		    {$('.maindiv2').hide();
		    $('#main').css('opacity','1');
		    });
	});

</script>
</head>
<!--code for popup  -->
<body>
<s:div cssClass="maindiv2">
<s:form action="#" theme="simple">
<s:div cssClass="setgoal">
<s:div cssClass="ghead">Set your new goal here!!!
<s:div cssClass="cancel"><img src="img/cancle2.png" width="100%" height="100%"/>
	</s:div>
	</s:div>
<table cellpadding="10px" style="padding-top: 20px;padding-left:30px;">
<tr>
<td>
</td>
</tr>
<tr>
<td>
<s:textfield cssClass="goaltitle" name="goaltitle" placeholder="Enter a title for your goal...."></s:textfield>
</td>
</tr>
<tr>
<td>
<s:textarea cssClass="description1" name="description1" placeholder="Description about goal...."></s:textarea>
</td>
</tr>
<tr>
<td>
<s:textfield cssClass="sdate1" id="datepicker" name="sdate1" placeholder="Enter start date for goal..."></s:textfield>
&nbsp;&nbsp;<s:label value="To"></s:label>&nbsp;&nbsp;
<s:textfield cssClass="edate1" id="datepicker1" name="edate1" placeholder="Enter end date for goal..."></s:textfield>

</td>
</tr>
</table>
<s:div cssClass="bottom">
<table style="padding-left:100px;">
<tr>
<td>
<s:submit value="Post" cssClass="btn"></s:submit>
<s:reset value="Cancel" cssClass="btn"></s:reset>
</td>
</tr> 
</table>
</s:div>
</s:div>
</s:form>
		        
</s:div>
<!--code for home page  -->

     <s:if test="#session.sessionStatus">

	<s:div cssClass="maincontainer" id="main">
		<s:div cssClass="header">
			<s:div cssClass="logo">
				<img src="\metalist\img\weblist_logo.PNG" width="100%" height="80px">
			</s:div>
			<s:div cssClass="head">
				<s:div cssClass="menu">
					<ul>
						<strong><li><s:a href="home.jsp">Home</s:a></li>
							<li><s:a href="index.jsp">About us</s:a></li>
							<li><s:a href="#">Contact us</s:a></li>
							<li><s:a href="logout">Logout</s:a></li> </strong>
					</ul>
				</s:div> 
			</s:div>
			<s:div cssClass="uname"><h2 style="color:#E62E8A;">Welcome&nbsp;<s:property value="#session.userData.firstName"/></h2></s:div>
		</s:div>
		<s:div cssClass="container">
			<s:div cssClass="leftcontainer">
				<s:div cssClass="profilepic">
				  <s:div cssClass="profilepic2">
				  <s:a action="imgDownload"></s:a> 
                  <img alt="imageDownload" src="imageDownload" height="100%;" width="100%;"/>
				  </s:div>
				</s:div>
				<s:div cssClass="button">
				    <h3 id="h3tag"><s:a id="link" href="#">My Profile</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
				    <h3 id="h3tag"><s:a id="link" href="changepass.jsp">Change Password</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
					<h3 id="h3tag"><s:a id="link" cssClass="goal" href="#">Set New Goal</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
					<h3 id="h3tag"><s:a id="link" href="goalzone.jsp">Goal Zone</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
					<h3 id="h3tag"><s:a id="link" href="#">Group Zone</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
					<h3 id="h3tag"><s:a id="link" href="meetup.jsp">Meetup Schedule</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
					<h3 id="h3tag"><s:a id="link" href="#">Inbox</s:a></h3>
				</s:div>
				<s:div cssClass="button1">
					<h3 id="h3tag"><s:a id="link" href="#">Sentbox</s:a></h3>
				</s:div>

			</s:div>
			<s:div cssClass="middlecontainer">
				<s:div cssClass="searchdiv">
					<s:textfield name="search" cssClass="search" cssStyle="padding-left:20px;"
						placeholder="Search Goals Here"></s:textfield>
					<s:a>
						<s:div cssClass="searchimg">
							<img src="\metalist\img\search.png" width="100%" height="100%">
						</s:div>
					</s:a>
				</s:div>
				
                <s:div cssClass="activity">
                   <s:div cssClass="title"><h3 style="text-align:left;padding-left: 10px;margin-top:5px;color:white;">Goal Title</h3></s:div>
                   <h3 style="text-align:left;padding-left:20px;margin-top:15px;color:black;">Description:</h3>
                   <s:div>
                   <s:textarea cssClass="description" name="goaldescription"></s:textarea>
                   </s:div>                    <s:div cssClass="date"><s:div cssClass="sdate"><h3>Start Date:</h3></s:div><s:div cssClass="text"><s:textfield cssStyle="background-color:#e6e6e6;outline:none;"></s:textfield> </s:div></s:div> 
                   <s:div cssClass="date"><s:div cssClass="edate"><h3>End Date:</h3></s:div><s:div cssClass="text1"><s:textfield cssStyle="background-color:#e6e6e6;outline:none;"></s:textfield> </s:div></s:div>
                    <s:div cssClass="social"><s:div cssClass="comment"><s:textarea placeholder="Write a comment" cssClass="textarea"></s:textarea> </s:div>
                    <s:div cssClass="like"><img src="\metalist\img\like3.png" width="100%" height="100%"> </s:div>
                    <s:div cssClass="join"><img src="\metalist\img\join3.png" width="100%" height="100%"> </s:div>
                    </s:div>
                   </s:div> 
            </s:div>
			<s:div cssClass="rightcontainer">
					<s:div cssClass="button2">
				     <h3 id="h3tag"><s:a id="link" href="#">Suggested Goals</s:a></h3>
				     </s:div>
				     <s:div cssClass="suggest">
				       <h3 style="color:#36a4c9;padding-left:100px;">Goals</h3>
				       <h3 style="color:#36a4c9;padding-left:80px;">Learn Java</h3>
	                   <s:div cssClass="btns">
	                     <s:submit value="Support" name="support" cssClass="supportbtn"></s:submit>
	                     <s:div cssClass="ignorebtn"><s:a> Ignore</s:a></s:div>
	                     
	                   </s:div>
				     </s:div>
			    	
			
			</s:div>
		</s:div>

	</s:div>
 </s:if>
<s:else>
	<c:redirect url="index"></c:redirect>
</s:else>

</body>
</html>