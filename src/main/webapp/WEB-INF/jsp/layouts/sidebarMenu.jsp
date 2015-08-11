<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
<tilesx:useAttribute name="current"/>

<div class="list-group">
	<a href="<s:url action='search' />" class="list-group-item ${current == 'search'? 'active' : ''}">Search</a> 
	<a href="<s:url action='result' />" class="list-group-item ${current == 'result'? 'active' : ''}">Result</a>
	<a href="search" class="list-group-item">Link</a>
	<a href="#" class="list-group-item">Link</a> 
	<a href="#" class="list-group-item">Link</a> 
	<a href="#" class="list-group-item">Link</a>
	<a href="#" class="list-group-item">Link</a> 
	<a href="#" class="list-group-item">Link</a> 
	<a href="#" class="list-group-item">Link</a>
	<a href="#" class="list-group-item">Link</a>
</div>