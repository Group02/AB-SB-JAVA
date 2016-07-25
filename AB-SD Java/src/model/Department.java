package model;

import javax.persistence.*;

@Entity
@Table (name = "department")
public class Department {

	@Id
	@Column(name = "departmentName")
	private String departmentName;
	
	@Column(name = "shortDescription")
	private String shortDescription;
	
	@Column(name = "leadContact")
	private String leadContact;
	
	@Column(name = "copyAddressFrom")
	private String copyAddressFrom;
	
	@Column(name = "addressLine")
	private String addressLine;
	
	@Column(name = "postcode")
	private String postcode;
	
	@Column(name = "town")
	private String town;
	
	@Column(name = "county")
	private String county;
	
	@Column(name = "nation")
	private String nation;
	
	@Column(name = "typeOfBusiness")
	private String typeOfBusiness;
	
	@Column(name = "sicCode")
	private String sicCode;
	
	@Column(name = "fullDescription")
	private String fullDescription;
	
	@Column(name = "phoneNumber")
	private String phoneNumber;
	
	@Column(name = "fax")
	private String fax;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "webAddress")
	private String webAddress;
	
	@Column(name = "isActive", columnDefinition = "varchar(255) default `yes`")
	private String isActive;

	public Department() {
		super();
	}

	public Department(String departmentName, String shortDescription,
			String leadContact, String copyAddressFrom, String addressLine,
			String postcode, String town, String county, String nation,
			String typeOfBusiness, String sicCode, String fullDescription,
			String phoneNumber, String fax, String email, String webAddress,
			String isActive) {
		super();
		this.departmentName = departmentName;
		this.shortDescription = shortDescription;
		this.leadContact = leadContact;
		this.copyAddressFrom = copyAddressFrom;
		this.addressLine = addressLine;
		this.postcode = postcode;
		this.town = town;
		this.county = county;
		this.nation = nation;
		this.typeOfBusiness = typeOfBusiness;
		this.sicCode = sicCode;
		this.fullDescription = fullDescription;
		this.phoneNumber = phoneNumber;
		this.fax = fax;
		this.email = email;
		this.webAddress = webAddress;
		this.isActive = isActive;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getLeadContact() {
		return leadContact;
	}

	public void setLeadContact(String leadContact) {
		this.leadContact = leadContact;
	}

	public String getCopyAddressFrom() {
		return copyAddressFrom;
	}

	public void setCopyAddressFrom(String copyAddressFrom) {
		this.copyAddressFrom = copyAddressFrom;
	}

	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getTypeOfBusiness() {
		return typeOfBusiness;
	}

	public void setTypeOfBusiness(String typeOfBusiness) {
		this.typeOfBusiness = typeOfBusiness;
	}

	public String getSicCode() {
		return sicCode;
	}

	public void setSicCode(String sicCode) {
		this.sicCode = sicCode;
	}

	public String getFullDescription() {
		return fullDescription;
	}

	public void setFullDescription(String fullDescription) {
		this.fullDescription = fullDescription;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebAddress() {
		return webAddress;
	}

	public void setWebAddress(String webAddress) {
		this.webAddress = webAddress;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "Department [departmentName=" + departmentName
				+ ", shortDescription=" + shortDescription + ", leadContact="
				+ leadContact + ", copyAddressFrom=" + copyAddressFrom
				+ ", addressLine=" + addressLine + ", postcode=" + postcode
				+ ", town=" + town + ", county=" + county + ", nation="
				+ nation + ", typeOfBusiness=" + typeOfBusiness + ", sicCode="
				+ sicCode + ", fullDescription=" + fullDescription
				+ ", phoneNumber=" + phoneNumber + ", fax=" + fax + ", email="
				+ email + ", webAddress=" + webAddress + ", isActive="
				+ isActive + "]";
	}
	
	public boolean checkYes(String yes){
		return (isActive.equals("yes"));
	}

}
