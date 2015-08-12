<%@ taglib prefix="s" uri="/struts-tags" %> 
<s:form name="searchForm">
	<table>
		<tr>
			<td><input type="radio" value="searchByID" name="searchType" id="searchByID" checked /> Search By ID</td>
			<td></td>
		</tr>
		<tr>
			<td>ID: </td>
			<td><s:textfield name="searchDC.ID" placeholder="Enter ID"/></td>
		</tr>
		
		<tr>
			<td><input type="radio" value="searchByName" name="searchType" id="searchByName" /> Search By Name</td>
			<td></td>
		</tr>
		
		<tr>
			<td>Last Name: </td>
			<td><s:textfield name="searchDC.lastName" placeholder="Enter Last Name" /></td>
		</tr>
		
		<tr>
			<td>First Name: </td>
			<td><s:textfield name="searchDC.firstName" placeholder="Enter First Name" /></td>
		</tr>
		
		<tr>
			<td>Date of Birth: </td>
			<td><s:textfield name="searchDC.dateOfBirth" placeholder="mm/dd/yyyy" /></td>
		</tr>
		
		<tr>
			<td>Gender: </td>
			<td>
				<s:select headerKey="" headerValue=""
					list="genderList" 
					name="searchDC.gender" />
			</td>
		</tr>
		
		<tr>
			<td>U.S citizen only: </td>
			<td><s:checkbox name="searchDC.usCitizenOnly" fieldValue="true" value="true" /></td>
		</tr>
		
		<tr>
			<td></td>
			<td>
				<s:submit key="submit" name="submit" id="searchBtn" onclick="searchFormSubmit(this)" />
<!-- 				<input type="button" value="Submit" name="submit" id="searchBtn" onclick="searchFormSubmit(this)"  /> -->
				<input type="button" value="Reset" name="reset" />
			</td>
		</tr>
	</table>
</s:form>

<script type="text/javascript">

	function searchFormSubmit(searchForm) {
		
		if (document.getElementById('searchByName').checked) {
			
			alert(document.getElementById('searchByName').value);
		  	document.searchForm.action = "<s:url action='resultName' />";
		}
		
		if (document.getElementById('searchByID').checked) {
			
			alert(document.getElementById('searchByID').value);
			document.searchForm.action = "<s:url action='result' />";
		}
		
		document.searchForm.submit(); 
	}

</script>
