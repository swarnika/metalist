$(window).load(function() {

	$('.maindiv').hide();
	$('#main').css('opacity', '1');
});

$(document).ready(function() {

	$('.invite').click(function(event) {
		$('.maindiv').show();
		$('.invitepop').show();
		$('#main').css('opacity', '0.2');
	});
	$('.cancel2').click(function(event) {
		$('.maindiv').hide();
		$('#main').css('opacity', '1');
	});
});