<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/slider.js" type="text/javascript"></script>
<script type="text/javascript" src="JQuery/forget.js"></script>
<script src="js/ajax.js" type="text/javascript"></script>

<script src="JQuery\jquery-1.8.3.js" type="text/javascript"></script>
<script src="JQuery\jquery-ui.js" type="text/javascript"></script>
<script src="JQuery\index.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css\style.css">
<link rel="stylesheet" type="text/css" href="css\login.css">
<link rel="stylesheet" type="text/css" href="css\register.css">
<link rel="stylesheet" href="css/forgetpopup.css" type="text/css">
</head>
<body>
	<s:div cssClass="maindiv2">
		<s:form action="forget" theme="simple">
			<s:div cssClass="forgetpass">
				<s:div cssClass="fhead">forgot password
<s:div cssClass="cancel">
						<img src="img/cancle2.png" width="30px" height="30px" />
					</s:div>
				</s:div>
				<table cellpadding="10px" style="padding-top:25px;">

					<tr>
						<td><s:textfield cssClass="email" name="forgetpass"
								placeholder="Enter email"></s:textfield> <s:fielderror
								fieldName="forgetpass"></s:fielderror></td>
					</tr>
					<tr>
						<td><s:submit value="Send" cssClass="btn"></s:submit> <s:reset
								value="Cancel" cssClass="btn"></s:reset></td>
					</tr>
				</table>
			</s:div>
		</s:form>

	</s:div>

	<s:div cssClass="maincontainer" id="main">
		<s:div cssClass="container">
			<s:div cssClass="header">
				<s:div cssClass="logo">
					<img src="\metalist\img\weblist_logo.PNG" width="100%"
						height="100%">
				</s:div>
				<s:div cssClass="head">
					<s:div cssClass="login">
						<s:div cssClass="left">
							<a href="#"><img src="\metalist\img\login.PNG" class="lg1"></a>
						</s:div>
						<s:div cssClass="right">
							<a href="#"><img src="\metalist\img\ac.PNG" class="register"></a>
						</s:div>
					</s:div>

					<s:div cssClass="flogin" id="Popup">
						<s:a action="fbsetup">
							<img src="/metalist/img/fb_img.PNG" />
						</s:a>
					</s:div>

				</s:div>
				<s:div cssClass="login_page">

					<s:form action="login" theme="simple">
						<%-- <h4 style="color: red;"><s:actionerror/></h4>  --%>
						<table width="200px" cellpadding="5px" height="70px" border="0"
							style="margin-left: 20px; margin-top: 20px;">
							<tr>
								<td><s:textfield cssClass="user_textbox" name="username"
										placeholder="Enter Email" /></td>
							</tr>
							<h4 style="color: red; text-align: center;padding-left: 35px;">
								<s:fielderror fieldName="username"></s:fielderror>
							</h4>

							<tr>
								<td><s:password cssClass="pass_textbox" name="password"
										placeholder="Enter Password" />
							</tr>
							<h4 style="color: red; text-align: center;padding-left: 30px;">
								<s:fielderror fieldName="password"></s:fielderror>
							</h4>

							<tr>
								<td style="height: 0px;"><h5
										style="padding-left: 40px; height: 0px;cursor: pointer;">
										<s:a cssClass="forget" href="">Forgot Password?</s:a>
									</h5></td>
							</tr>
							<tr>
								<td><s:checkbox name="ch" cssClass="ch"></s:checkbox> <s:label
										value="Remember me" cssClass="remember"></s:label></td>
							</tr>
						</table>
						<s:div cssClass="login_page_bottum">
							<s:submit value="Login" cssClass="log_btn"></s:submit>
							<s:reset value="Cancel" cssClass="rst_btn"></s:reset>
						</s:div>
					</s:form>
				</s:div>
				<s:div cssClass="register_page">
					<s:form action="register" theme="simple"  enctype="multipart/form-data">
						<h4 style="color: red; text-align: center;padding-left:45px;">
							<s:actionerror />
						</h4>
						<table border="0" cellpadding="5" cellspacing="5"
							style="margin-left: 20px; margin-top: 20px;">
							<tr>
								<td>*&nbsp;<s:label value="Name" /></td>
								<td><s:textfield cssClass="name_textbox" name="uname"
										placeholder="Enter Your Name" /></td>
							</tr>

							<tr>
								<td>*&nbsp;<s:label value="E-mail" /></td>
								<td><s:textfield cssClass="name_textbox" name="email" id="valid"
										placeholder="Enter Your Email" /></td>
								
							</tr>
							<tr class="emailvalid" style="color: black;"><s:actionerror/></tr>			
							
							<tr>
								<td>*&nbsp;<s:label value="Password" /></td>
								<td><s:password cssClass="name_textbox" name="pass"
										placeholder="Enter Your Password" /></td>

							</tr>
							<tr>
								<td>*&nbsp;<s:label value="Confirm Password" /></td>
								<td><s:password cssClass="name_textbox" name="cpass"
										placeholder="Re-enter Your Password" /></td>
							</tr>
							<tr>
								<td>*&nbsp;<s:label value="Profession Details" /></td>
								<td><s:select list="{'Select','Employee','Student','12:30 indore'}"
										id="combo"
										cssStyle="height:25px; width:258px;outline: none;color:#909090;"
										cssClass="name_textbox" name="details"></s:select></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<s:label value="Company Name" /></td>
								<td><s:textfield cssClass="name_textbox" disabled="true"
										name="companyname" id="companyname"
										placeholder="Enter your company name" /></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<s:label value="Highest Qualification" /></td>
								<td><s:textfield cssClass="name_textbox" disabled="true"
										name="qualification" id="qualification"
										placeholder="Enter your Highest qualification" /></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<s:label value="School/College" /></td>
								<td><s:textfield cssClass="name_textbox" disabled="true"
										name="collage" id="college"
										placeholder="Enter your school/collage name" /></td>
							</tr>
							<tr>
								<td>*&nbsp;<s:label value="Location" /></td>
								<td><s:textfield cssClass="name_textbox" name="Location"
										id="Location" placeholder="Enter your location" /></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;<s:label value="Date of Birth" /></td>
								<td><s:textfield cssClass="name_textbox" name="dob"
										id="datepicker" placeholder="Enter Your DOB" /></td>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;<s:label value="Contact Number" /></td>
								<td><s:textfield cssClass="name_textbox" name="cno"
										placeholder="Enter Your contact no" /></td>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;<s:label value="Address" /></td>
								<td><s:textarea cssClass="name_textbox" name="address"
										placeholder="Enter your Address" /></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;<s:label value="Gender" /></td>
								<td><s:radio name="gen" list="{'Male','Female'}" /></td>
							</tr>
							<tr>
								<td>*&nbsp;<s:label value="Upload Photo" /></td>
			                    <td><s:file name="profileImage" accept="image/jpeg,image/jpg,image/png,image/gif"/></td>
							</tr>

						</table>
						<s:div cssClass="reg_page_bottum">
							<s:submit value="Submit" cssClass="reg_submit"></s:submit>
							<s:reset value="Cancel" cssClass="reg_reset"></s:reset>
						</s:div>
					</s:form>
				</s:div>

			</s:div>


			<s:div cssClass="centerimg">
				<s:div cssClass="images">
					<img class="img1" src="/metalist/img/im01.jpg" width="100%"
						height="400px">
				</s:div>
				<s:div cssClass="images">
					<img class="img1" src="/metalist/img/im02.jpg" width="100%"
						height="400px">
				</s:div>
				<s:div cssClass="images">
					<img class="img1" src="/metalist/img/im03.jpg" width="100%"
						height="400px">
				</s:div>
			</s:div>

			<s:div cssClass="holder">

				<!-- <s:div cssClass="cycle"><img src="/metalist/img/cycle.PNG" width="100%" height="100%"></s:div> -->
				<s:div cssClass="cycle">
					<s:div cssClass="cycle_div1">
						<s:div cssClass="cycle_div1_img"></s:div>
						<s:div cssClass="cycle_div1_text">
							<h2 style="color: #36a4c9; font-family: Monotype Corsiva;">More
								than doubles success rates!</h2>
							<p
								style="font-size: 17px; margin-top: -13px; font-family: Arial; text-align: justify; word-spacing: -1px;">We
								significantly increase your chance of compeleting your goals by
								combining the power of SMART goals and peer pressure!</p>
						</s:div>
					</s:div>
					<s:div cssClass="cycle_div2">
						<s:div cssClass="cycle_div2_img"></s:div>
						<s:div cssClass="cycle_div2_text">
							<h2
								style="color: #36a4c9; text-align: left; font-family: Monotype Corsiva;">Challenge
								friends with a Group GoalZone!</h2>
							<p
								style="font-size: 17px; margin-top: -13px; font-family: Arial; text-align: justify; word-spacing: -1px;">Get
								Compititive! same goal,same deadline.Who'll finish first?</p>
						</s:div>
					</s:div>
					<s:div cssClass="cycle_div3">
						<s:div cssClass="cycle_div3_img"></s:div>
						<s:div cssClass="cycle_div3_text">
							<h2
								style="color: #36a4c9; text-align: left; font-family: Monotype Corsiva;">Share
								your knowledge arround the world!</h2>
							<p
								style="font-size: 17px; margin-top: -13px; font-family: Arial; text-align: justify; word-spacing: -1px;">Metalist
								provide you platform for exploring your knowledge.it helps you
								to enhance your kowledge.</p>
						</s:div>
					</s:div>
					<s:div cssClass="cycle_div4">
						<s:div cssClass="cycle_div4_img"></s:div>
						<s:div cssClass="cycle_div4_text">
							<h2
								style="color: #36a4c9; text-align: left; font-family: Monotype Corsiva;">Achieve
								your goals with metalist!</h2>
							<p
								style="font-size: 17px; margin-top: -13px; font-family: Arial; text-align: justify; word-spacing: -1px;">Metalist
								helpes you to meet with your desired goals.you set your goal
								with metalist and interact with different peoples at one
								platform.</p>
						</s:div>
					</s:div>

				</s:div>
				<s:div cssClass="blog">
					<s:div cssClass="pubgoal">LATEST PUBLIC GOALS...</s:div>
					<s:div cssClass="goalblock">
						<s:div cssClass="blk1">

							<s:div cssClass="thumb1"></s:div>
							<s:div cssClass="text1">
								<ul>
									<li><h3 style="color: orange;">Recent Goal:</h3></li>
									<li style=""><h4 style="color: black; padding-left: 10px;">Learn
											Japanese</h4></li>
									<li><h3 style="color: orange; padding-left: 155px;">
											<a href="login.jsp">Support?</a>
										</h3></li>
								</ul>
							</s:div>

						</s:div>
						<s:div cssClass="blk2">

							<s:div cssClass="thumb2"></s:div>
							<s:div cssClass="text2">
								<ul>
									<li><h3 style="color: orange;">Recent Goal:</h3></li>
									<li style=""><h4 style="color: black; padding-left: 10px;">Learn
											Java</h4></li>
									<li><h3 style="color: orange; padding-left: 186px;">
											<a href="login.jsp">Support?</a>
										</h3></li>
								</ul>
							</s:div>

						</s:div>
						<s:div cssClass="blk3">

							<s:div cssClass="thumb3"></s:div>
							<s:div cssClass="text3">
								<ul>
									<li><h3 style="color: orange;">Recent Goal:</h3></li>
									<li style=""><h4 style="color: black; padding-left: 10px;">Improve
											my climbing</h4></li>
									<li><h3 style="color: orange; padding-left: 125px;">
											<a href="login.jsp">Support?</a>
										</h3></li>
								</ul>
							</s:div>

						</s:div>
					</s:div>
					<s:div cssClass="pubwish">LATEST PUBLIC WISH BLOGS...</s:div>
					<s:div cssClass="wishblock">
						<s:div cssClass="blk4">

							<s:div cssClass="thumb4"></s:div>
							<s:div cssClass="text4">
								<h4 style="color: black;">I just created a Meetup group
									called "Lady Blues Jammers" to facilitate my goal of playing at
									blue james!</h4>
							</s:div>
						</s:div>
						<s:div cssClass="blk5">

							<s:div cssClass="thumb5"></s:div>
							<s:div cssClass="text5">
								<h4 style="color: black;">Really sick of feeling groggy so
									am going to do a detox. I read about a juice diet but am going
									to research first...</h4>
							</s:div>

						</s:div>
						<s:div cssClass="blk6">

							<s:div cssClass="thumb6"></s:div>
							<s:div cssClass="text6">
								<h4 style="color: black;">i am going to learn 3 blues tunes
									on my bass and i will attend my first jam of 2014 by the end of
									the month.</h4>
							</s:div>

						</s:div>
					</s:div>


				</s:div>
			</s:div>
			<s:div cssClass="footer_click"></s:div>
			<s:div cssClass="footer">
				<s:div cssClass="social">
					<class ="tooltip" title="Facebook">
					<a href="https://www.facebook.com"><s:div cssClass="fb"></s:div></a>
					<class ="tooltip" title="Twitter">
					<a href="https://www.twitter.com"><s:div cssClass="twiter"></s:div></a>
					<class ="tooltip" title="Linkedin">
					<a href="https://www.linkedin.com"><s:div cssClass="linked"></s:div></a>
				</s:div>
				<s:div cssClass="copyright">
					<h4 style="font-family: Monotype Corsiva">Copyright © 2014
						Metalist</h4>
				</s:div>
			</s:div>
		</s:div>
	</s:div>
</body>
</html>