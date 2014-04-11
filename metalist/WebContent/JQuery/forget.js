$(window).load(function() {

	if ($('.login_page').find('.errorMessage').length) {
		showLogin();
	}
	if ($('.register_page').find('.errorMessage').length) {
		showReg();
	}

	$('.maindiv2').hide();
	$('#main').css('opacity', '1');
	
    
	if ($('.forgetpass').find('.errorMessage').length) {
		$('.maindiv2').show();
		$('.forgetpass').show();
		$('#main').css('opacity', '0.2');
	}

	});

$('document').ready(function()
		{
    $('.forget').click(function (event)
		    {$('.maindiv2').show();
		    $('.login_page').hide();
		    $('#main').css('opacity','0.2');
		   		    });
	$('.cancel').click(function (event)
		    {$('.maindiv2').hide();
		    $('.login_page').show();
		    $('#main').css('opacity','1');
		    });
	});