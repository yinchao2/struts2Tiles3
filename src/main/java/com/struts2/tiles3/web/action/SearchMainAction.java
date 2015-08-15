package com.struts2.tiles3.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.struts2.tiles3.web.service.domain.SearchDC;

public class SearchMainAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private SearchDC searchDC;

	public SearchDC getSearchDC() {
		return searchDC;
	}

	public void setSearchDC(SearchDC searchDC) {
		this.searchDC = searchDC;
	}

	public String getSearchMain() {
		
		if(searchDC.getSearchType().equals("searchByID")) {
			return "resultID";
		} else if (searchDC.getSearchType().equals("searchByName")) {
			return "resultName";
		}
		
		return SUCCESS;
	}
}
