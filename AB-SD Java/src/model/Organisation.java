package model;

import javax.persistence.*;

public class Organisation {
	
	@Id
	@Column(name = "orgName")
	private String orgName;
	
	@Column(name = "shortDescr")
	private String shortDescr;
	
	@Column(name = "addressLookup")
	private AddressLookup addressLookup; // (Address Line, PostCode, City, County, Country)
	
	@Column(name = "orgName")
	private BusinessLookup businessLookup; // (Business Name, SIC code)
	
	@Column(name = "orgName")
	private String phoneNumber;
	
	@Column(name = "orgName")
	private Contacts leadContact;
	
	@Column(name = "orgName")
	private String fullDescr;
	
	@Column(name = "orgName")
	private String fax;
	
	@Column(name = "orgName")
	private String email;
	
	@Column(name = "orgName")
	private String webAddr;
	
	@Column(name = "orgName")
	private int charityNumber;
	
	@Column(name = "orgName")
	private int companyNumber;
	
	@Column(name = "orgName")
	private boolean isActive = true;
	
	public Organisation() {
		super();
	}

	public Organisation(String orgName, String shortDescr,
			AddressLookup addressLookup, BusinessLookup businessLookup,
			String phoneNumber, Contacts leadContact, String fullDescr,
			String fax, String email, String webAddr, int charityNumber,
			int companyNumber, boolean isActive) {
		super();
		this.orgName = orgName;
		this.shortDescr = shortDescr;
		this.addressLookup = addressLookup;
		this.businessLookup = businessLookup;
		this.phoneNumber = phoneNumber;
		this.leadContact = leadContact;
		this.fullDescr = fullDescr;
		this.fax = fax;
		this.email = email;
		this.webAddr = webAddr;
		this.charityNumber = charityNumber;
		this.companyNumber = companyNumber;
		this.isActive = isActive;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getShortDescr() {
		return shortDescr;
	}

	public void setShortDescr(String shortDescr) {
		this.shortDescr = shortDescr;
	}

	public AddressLookup getAddressLookup() {
		return addressLookup;
	}

	public void setAddressLookup(AddressLookup addressLookup) {
		this.addressLookup = addressLookup;
	}

	public BusinessLookup getBusinessLookup() {
		return businessLookup;
	}

	public void setBusinessLookup(BusinessLookup businessLookup) {
		this.businessLookup = businessLookup;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Contacts getLeadContact() {
		return leadContact;
	}

	public void setLeadContact(Contacts leadContact) {
		this.leadContact = leadContact;
	}

	public String getFullDescr() {
		return fullDescr;
	}

	public void setFullDescr(String fullDescr) {
		this.fullDescr = fullDescr;
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

	public String getWebAddr() {
		return webAddr;
	}

	public void setWebAddr(String webAddr) {
		this.webAddr = webAddr;
	}

	public int getCharityNumber() {
		return charityNumber;
	}

	public void setCharityNumber(int charityNumber) {
		this.charityNumber = charityNumber;
	}

	public int getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(int companyNumber) {
		this.companyNumber = companyNumber;
	}

	public boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

}
