$(window).load(function() {

	$('.maindiv3').hide();
	$('#main').css('opacity', '1');
});


$(document).ready(function()
		{
	
	$('.upload').click(function (event)
		    {$('.maindiv3').show();
		      $('.upload').show();
		    $('#main').css('opacity','0.2');
		   		    });
	$('.cancel3').click(function (event)
		    {$('.maindiv3').hide();
		    $('#main').css('opacity','1');
		    });
	});