
$(document).ready(function()
{
	var img1 = $('.img1');
    current = 0;
    img1.hide();
    Rotator();

    function Rotator() {
     $(img1[current]).show('slide',{direction:"right"},50).delay(2200).hide('slide',{direction:"left"},200);
        $(img1[current]).queue(function () {
            current = current < img1.length - 1 ? current + 1 : 0;
            Rotator();
            $(this).dequeue();
        });
    }

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
	            showLogin();
			});
   
   $('.register').click(function()
			{
	           showReg();
	            
			});

   $('.flogin').click(function()
			{
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

function showLogin() {
	$('.login_page').animate({height:'toggle'},'slow');
    $('.login_page').css('display','block');
    $('.register_page').css('display','none');
    $('.fb_login').css('display','none');
}
function showReg() {
	$('.register_page').animate({height:'toggle'},'slow');
    $('.register_page').css('display','block');
    $('.login_page').css('display','none');
    $('.fb_login').css('display','none');
}
/* javascript for error msg and popu
*/

