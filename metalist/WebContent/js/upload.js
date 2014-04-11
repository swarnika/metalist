$('document').ready(function()
		{
	$('.uploadheader1').click(function()
			{
		$('.imageupload').animate({height:'toggle'},'fast');
		$('.imageupload').css('display','block');
	    $('.videoupload').css('display','none');
		$('.pdfupload').css('display','none');


			});
	$('.uploadheader2').click(function()
			{
		$('.videoupload').animate({height:'toggle'},'fast');
		$('.videoupload').css('display','block');
	    $('.imageupload').css('display','none');
		$('.pdfupload').css('display','none');


			});
	$('.uploadheader3').click(function()
			{
		$('.pdfupload').animate({height:'toggle'},'fast');
		$('.pdfupload').css('display','block');
	    $('imageupload').css('display','none');
		$('.videoupload').css('display','none');


			});

			});
