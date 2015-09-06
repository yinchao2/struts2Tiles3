<%@ taglib prefix="s" uri="/struts-tags" %>
<h2>Result</h2>

<s:property value="searchDC.getID()" />

<!-- Small modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm" onclick="getAddressHistory()">Small modal</button>

<div id="results" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"></div>

<script type="text/javascript">
	
	function creatPopUpWindow(data) {
		
		var secondDiv = document.createElement("div");
		secondDiv.setAttribute("class", "modal-dialog modal-sm");
		
		var thirdDiv = document.createElement("div");
		thirdDiv.setAttribute("class", "modal-content");
		
		var pData = document.createElement("p");
		pData.appendChild(document.createTextNode(data.lists));
		
		var btnFooterDiv = document.createElement("div");
		btnFooterDiv.setAttribute("class", "modal-footer");
		
		var btnOK = document.createElement("button");
		btnOK.setAttribute("class", "btn btn-primary");
		btnOK.setAttribute("type", "button");
		btnOK.setAttribute("data-dismiss", "modal");
		btnOK.appendChild(document.createTextNode("OK"));
		
		btnFooterDiv.appendChild(btnOK);
		
		thirdDiv.appendChild(pData);
		thirdDiv.appendChild(btnFooterDiv);
		
		secondDiv.appendChild(thirdDiv);
		
		$("#results").html(secondDiv);
	}
	
	function getAddressHistory() {
		$.ajax({
			// The URL for the request
			url: "<s:url action="jsonData"></s:url>",
			// The data to send (will be converted to a query string)
			// Whether this is a POST or GET request
			beforeSend: function(xhr){
			    if (xhr.overrideMimeType)
			    {
			      xhr.overrideMimeType("application/json");
			    }
			},
			type: "GET",
			// The type of data we expect back
			dataType : "json",
			// Code to run if the request succeeds;
			// the response is passed to the function
			success: function(data) {
				creatPopUpWindow(data);
			},
			// Code to run if the request fails; the raw request and
			// status codes are passed to the function
			error: function( xhr, status, errorThrown ) {
				alert( "Sorry, there was a problem!" );
				console.log( "Error: " + errorThrown );
				console.log( "Status: " + status );
				console.dir( xhr );
			},
			// Code to run regardless of success or failure
			complete: function( xhr, status ) {
				//alert( "The request is complete!" );
			}
		});
	}
	
</script>