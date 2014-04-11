$(window).load(function() {

	$('.meetupmaindiv').hide();
	$('#main').css('opacity', '1');
});

$(document).ready(function()
		{
    $('.meetuplink').click(function (event)
		    {
    	    $('.meetupmaindiv').show();
    	    $('.maindiv2').hide();
    		$('.maindiv').hide();


		    $('#main').css('opacity','0.2');
		   		    });
	$('.meetupcancel').click(function (event)
		    {
		    $('.meetupmaindiv').hide();
		    $('#main').css('opacity','1');
		    });
	});
