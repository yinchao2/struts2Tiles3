$("#searchMain").submit(function(e) {
	alert("ajaxFormSubmit");
	var Postdata = $(this).serialize();
	var formURL = $(this).Attr("action");
	
	$.ajax({
		url: formURL,
		type: "post",
		data: Postdata,
		success: function(data, textStatus, jqXHR) {
			
		},
		error: function(jqXHR, txtStatus, errorThrown) {
			alert("fail");
		}
	});
});