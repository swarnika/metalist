<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="\metalist\css\style.css">
<link rel="stylesheet" type="text/css" href="\metalist\css\login.css">
<link rel="stylesheet" type="text/css" href="\metalist\css\register.css">
<script src="\metalist\JQuery\jquery-1.8.3.js"></script>
<script src="\metalist\JQuery\jquery-ui.js"></script>


<script>
$(document).ready(function()
{
   $('.pubgoal').click(function()
	{
	    $('.goalblock').toggle();
	});
   
   $('.pubwish').click(function()
			{
			    $('.wishblock').toggle();
			});
   
		
   $('.lg1').click(function()
			{
	            $('.login_page').animate({height:'toggle'},'slow');
	            $('.login_page').css('display','block');
	            $('.register_page').css('display','none');
	            $('.fb_login').css('display','none');
			});
   $('.register').click(function()
			{
	            $('.register_page').animate({height:'toggle'},'slow');
	            $('.register_page').css('display','block');
	            $('.login_page').css('display','none');
	            $('.fb_login').css('display','none');

			});

   $('.flogin').click(function()
			{
	            $('.fb_login').animate({height:'toggle'},'slow');
	            $('.fb_login').css('display','block');
	            $('.login_page').css('display','none');
	            $('.register_page').css('display','none');
		
			});

    $(function() {
	    $("#combo").change(function() {
	        if ($(this).val() == "Employee") 
	        {
	            console.log(true);
	            $("#companyname").removeAttr("disabled");
	             $("#qualification").attr("disabled", "disabled");
	            $("#college").attr("disabled", "disabled");
	            $("#qualification").css('background-color','#909090');
	            $("#companyname").css('background-color','#e6e6e6  ');
	             $("#college").css('background-color','#909090 	');
	                }
	        else if($(this).val() == "Student")
	                {
	            console.log(false);
	            $("#companyname").attr("disabled", "disabled");
	            $("#qualification").removeAttr("disabled");
	            $("#college").removeAttr("disabled");
	                                      
	            $("#qualification").removeAttr("background-color");
	            $("#companyname").css('background-color','#909090 	');
	            $("#college").css('background-color','#e6e6e6 ');
	            $("#qualification").css('background-color','#e6e6e6  ');
	                }
	        else
	                {
	             $("#companyname").attr("disabled", "disabled");
	             $("#qualification").attr("disabled", "disabled");
	             $("#college").attr("disabled", "disabled");

	                }

	    });
	});

   
});

</script>
<style>

</style>
</head>
<body>
  <s:div cssClass="maincontainer">
	  <s:div cssClass="container">
		    <s:div cssClass="header">
		         <s:div cssClass="logo"><img src="\metalist\img\weblist_logo.PNG" width="100%" height="100%"></s:div>
		         <s:div cssClass="head">
		         <s:div cssClass="login">
		         <s:div cssClass="left"><a href="#"><img src="\metalist\img\login.PNG" class="lg1"></a></s:div>
		         <s:div cssClass="right"><a href="#"><img src="\metalist\img\ac.PNG" class="register"></a></s:div>
		     </s:div> 
		     
		    <s:div cssClass="flogin"></s:div>  
		    
		    </s:div>
		    <s:div cssClass="login_page">
		    
		    <s:form action="login" theme="simple">
		    <table width="200px" cellpadding="5px" height="70px" border="0" style="margin-left:20px; margin-top: 20px;">
		      <tr>
		       <td><s:textfield cssClass="user_textbox" name="username" placeholder="Enter Username" />
		       <s:fielderror fieldName="username" cssStyle="color:red;"></s:fielderror>
		       </td>
		      </tr>
		      <tr>
		        <td><s:password cssClass="pass_textbox" name="password" placeholder="Enter Password" />
		        <s:fielderror fieldName="password" cssStyle="color:red;"></s:fielderror>
		        </td>
		       </tr>
	           
	           <tr>
		          <td><h3 style="padding-left: 10px;"><a id="forget" href="#">Forget Password?</a></h3></td>
		       </tr>
	           
		     </table> 
	        <s:div cssClass="login_page_bottum">
	          <s:submit value="Login" cssClass="log_btn"></s:submit>
	          <s:reset value="Cancel" cssClass="rst_btn"></s:reset>
	        </s:div>	    
		    </s:form>
		    </s:div>
		    <s:div cssClass="register_page">
		    <s:form action="register" theme="simple">
		    <table  border="0" cellpadding="5" cellspacing="5" style="margin-left:20px; margin-top: 20px;">
		      <tr>
		      <td>*&nbsp;<s:label value="Username" /></td>
		      <td><s:textfield cssClass="name_textbox" name="uname" placeholder="Enter Your Username" /></td>
		      	<s:fielderror fieldName="uname" cssStyle="color:red;"></s:fielderror>
		        
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
		      <td><s:select list="{'--Select--','Employee','Student'}" id="combo" cssStyle="height:25px; width:258px;outline: none;" cssClass="name_textbox" name="details"></s:select></td>
		      </tr>
		      <tr>
		      <td>&nbsp;&nbsp;<s:label value="Company name" /></td>
		      <td><s:textfield cssClass="name_textbox" disabled="true" name="companyname" id="companyname" placeholder="Enter your company name" /></td>
		      </tr>
		      <tr>
		      <td>&nbsp;&nbsp;<s:label value="Highest qualification" /></td>
		      <td><s:textfield cssClass="name_textbox" disabled="true" name="qualification" id="qualification" placeholder="Enter your Highest qualification" /></td>
		      </tr>
		       <tr>
		      <td>&nbsp;&nbsp;<s:label value="School/College" /></td>
		      <td><s:textfield cssClass="name_textbox" disabled="true" name="college" id="college" placeholder="Enter your school/collage name" /></td>
		      </tr>
		      <tr>
		      <td>*&nbsp;<s:label value="Location" /></td>
		      <td><s:textfield cssClass="name_textbox" name="Location" id="Location" placeholder="Enter your location" /></td>
		      </tr>
              <tr>
		      <td>*&nbsp;<s:label value="Upload Photo" /></td>
		      <td><s:file name="photo"/></td>
		      </tr>
		      <tr>
		      <td></td>
		      <td><s:label cssStyle="color:red;" value="Feilds with * is compulsary"></s:label></td>
		      </tr>
		      
		     </table> 
	        <s:div cssClass="reg_page_bottum">
	          <s:submit value="Submit" cssClass="reg_submit"></s:submit>
	          <s:reset value="Cancel" cssClass="reg_reset"></s:reset>
	        </s:div>	     
		    </s:form>
		    </s:div>   
		    <s:div cssClass="fb_login">
		    <iframe src="https://www.facebook.com/login/?next=%2F" width="100%" height="100%"></iframe>
		    
		    </s:div>
		    </s:div>
		    <s:div cssClass="bigimage"><img src="/metalist/img/im01.jpg" width="100%" height="100%"></s:div>
		    <s:div cssClass="holder">
		          
			       <!-- <s:div cssClass="cycle"><img src="/metalist/img/cycle.PNG" width="100%" height="100%"></s:div> --> 
			        <s:div cssClass="cycle">
			           <s:div cssClass="cycle_div1">
			              <s:div cssClass="cycle_div1_img"></s:div>
			              <s:div cssClass="cycle_div1_text"><h2 style="color:#36a4c9;">More than doubles success rates!</h2><p style="font-size: 17px;margin-top: -13px;">We significantly increase your chance of compeleting your goals by combining the power of SMART goals and peer pressure!</p></s:div>
			           </s:div>
			           <s:div cssClass="cycle_div2">
				           <s:div cssClass="cycle_div2_img"></s:div>
				           <s:div cssClass="cycle_div2_text"><h2 style="color:#36a4c9;text-align: left;">Challenge friends with a Group GoalZone!</h2><p style="font-size: 17px;margin-top: -13px;">Get Compititive! same goal,same deadline.Who'll finish first?</p></s:div>
			           </s:div>
			           <s:div cssClass="cycle_div3">
			               <s:div cssClass="cycle_div3_img"></s:div>
			               <s:div cssClass="cycle_div3_text"><h2 style="color:#36a4c9;text-align: left;">Share your knowledge arround the world!</h2><p style="font-size: 17px;margin-top: -13px;text-align:justify;">Metalist provide you platform for exploring your knowledge.it helps you to enhance your kowledge.</p></s:div>
			           </s:div>
                       <s:div cssClass="cycle_div4">
			               <s:div cssClass="cycle_div4_img"></s:div>
			               <s:div cssClass="cycle_div4_text"><h2 style="color:#36a4c9;text-align: left;">Achieve your goals with metalist!</h2><p style="font-size: 17px;margin-top: -13px;text-align:justify;">Metalist helpes you to meet with your desired goals.you set your goal with metalist and interact with different peoples at one platform.</p></s:div>
			           </s:div>
                       
			        </s:div>
			        <s:div cssClass="blog">
			        <s:div cssClass="pubgoal">LATEST PUBLIC GOALS...</s:div>
			        <s:div cssClass="goalblock">
			        <s:div cssClass="blk1">
			           
			             <s:div cssClass="thumb1"></s:div>
			    	     <s:div cssClass="text1"><ul><li><h3 style="color: orange;">Recent Goal:</h3></li><li style=""><h4 style="color: black;padding-left:10px;">Learn Japanese</h4></li><li><h3 style="color: orange;padding-left:155px;"><a href="#">Support?</a></h3></li></ul></s:div>	        
			           
			        </s:div>
			        <s:div cssClass="blk2">
			           
			             <s:div cssClass="thumb2"></s:div>
			    	     <s:div cssClass="text2"><ul><li><h3 style="color: orange;">Recent Goal:</h3></li><li style=""><h4 style="color: black;padding-left:10px;">Learn Java</h4></li><li><h3 style="color: orange;padding-left:186px;"><a href="#">Support?</a></h3></li></ul></s:div>	        
			          
			        </s:div>
			        <s:div cssClass="blk3">
			           
			             <s:div cssClass="thumb3"></s:div>
			    	     <s:div cssClass="text3"><ul><li><h3 style="color: orange;">Recent Goal:</h3></li><li style=""><h4 style="color: black;padding-left:10px;">Improve my climbing</h4></li><li><h3 style="color: orange;padding-left:125px;"><a href="#">Support?</a></h3></li></ul></s:div>	        
			           
			        </s:div>
			       </s:div>
			        <s:div cssClass="pubwish">LATEST PUBLIC WISH BLOGS...</s:div>
			        <s:div cssClass="wishblock">
			 <s:div cssClass="blk4">
			           
			             <s:div cssClass="thumb4"></s:div>
			    	     <s:div cssClass="text4"><h4 style="color:black;">I just created a Meetup group called "Lady Blues Jammers" to facilitate my goal of playing at blue james!</h4></s:div>	        
			           
			        </s:div>
			        <s:div cssClass="blk5">
			           
			             <s:div cssClass="thumb5"></s:div>
			    	     <s:div cssClass="text5"><h4 style="color:black;">Really sick of feeling groggy so am going to do a detox. I read about a juice diet but am going to research first...</h4></s:div>	        
			           
			        </s:div>
			        <s:div cssClass="blk6">
			           
			             <s:div cssClass="thumb6"></s:div>
			    	     <s:div cssClass="text6"><h4 style="color:black;">i am going to learn 3 blues tunes on my bass and i will attend my first jam of 2014 by the end of the month.</h4></s:div>	        
			           
			        </s:div>
			        </s:div>       
		        
		            
		     </s:div>
		  </s:div>
		  <s:div cssClass="footer_click"></s:div>
		  <s:div cssClass="footer">
		   <s:div cssClass="social">  
		    <s:div cssClass="fb"></s:div> 
		    <s:div cssClass="twiter"></s:div> 
		    <s:div cssClass="linked"> </s:div> 
		   </s:div>
		  </s:div>
	  </s:div>
  </s:div>
</body>
</html>