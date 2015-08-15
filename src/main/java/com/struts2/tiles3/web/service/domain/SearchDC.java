package com.struts2.tiles3.web.service.domain;

public class SearchDC {

	private String ID;
	private String firstName;
	private String lastName;
	private String dateOfBirth;
	private String gender;
	private boolean usCitizenOnly;
	private String searchType;

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public boolean isUsCitizenOnly() {
		return usCitizenOnly;
	}

	public void setUsCitizenOnly(boolean usCitizenOnly) {
		this.usCitizenOnly = usCitizenOnly;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

}
