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

