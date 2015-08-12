package com.struts2.tiles3.web.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private List<String> genderList;
	
	public SearchAction() {
		genderList = new ArrayList<String>();
		genderList.add("Female");
		genderList.add("Male");
	}
	
	public List<String> getGenderList() {
		return genderList;
	}

	public void setGenderList(List<String> genderList) {
		this.genderList = genderList;
	}
	
	public String getSearch() {
		
		return SUCCESS;
	}

}
