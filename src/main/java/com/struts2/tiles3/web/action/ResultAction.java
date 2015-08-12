package com.struts2.tiles3.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.struts2.tiles3.web.service.domain.SearchDC;

public class ResultAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private SearchDC searchDC;

	public SearchDC getSearchDC() {
		return searchDC;
	}

	public void setSearchDC(SearchDC searchDC) {
		this.searchDC = searchDC;
	}

	public String getResult() {
		
		System.out.println(searchDC.getID());
		
		return SUCCESS;
	}

}
