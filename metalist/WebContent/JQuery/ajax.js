$('document').ready(function() 
{
	$('#search').blur(function() 
	{
		var search = $('#search').val();
		$.ajax(
		{
			url : 'search.jsp',
			type : 'POST',
			dataType : 'html',
			data : {search : search},
			success : function(response) 
			{
				$('#tbody').html(response);  

			},
			error : function(response) 
			{
				alert("Unable to connect to server");
			}
		});
	});
});