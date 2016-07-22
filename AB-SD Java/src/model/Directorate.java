package model;

import javax.persistence.*;

@Entity
@Table(name="Directorate")
public class Directorate {
	
	@Id
	@Column(name = "Directoratename")
	private String directorateName;
	
	@Column(name = "shortdescription")
	private String shortDescr;
	
	@Column(name = "leadContact")
	private String leadContact;
	
	@Column(name = "copyAddfromOrg", columnDefinition = "tinyint default false")
	private boolean cpAddr;
	
	@Column(name = "Addressline")
	private String addrLine1;
	
	@Column(name = "Postcose")
	private String postcode;
	
	@Column(name = "Town")
	private String town;
	
	@Column(name = "County")
	private String county;
	
	@Column(name = "Nation")
	private String nation;
	
	@Column(name = "TypeofBusiness")
	private String typeBusiness;
	
	@Column(name = "SICcode")
	private String SICcode;
	
	@Column(name = "Fulldescription")
	private String fullDescr;
	
	@Column(name = "Phonenumber")
	private String phoneNumber;
	
	@Column(name = "Fax")
	private String fax;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "WebAddress")
	private String webAddress;
	
	@Column(name = "Charitynumber")
	private String charNumber;
	
	@Column(name = "CompanyNumber")
	private String compNumber;
	
	@Column(name = "isActive", columnDefinition = "tinyint default true")
	private boolean active;

	public Directorate() {
		super();
	}

	public Directorate(String directorateName, String shortDescr,
			String leadContact, boolean cpAddr, String addrLine1,
			String postcode, String town, String county, String nation,
			String typeBusiness, String sICcode, String fullDescr,
			String phoneNumber, String fax, String email, String webAddress,
			String charNumber, String compNumber, boolean active) {
		super();
		this.directorateName = directorateName;
		this.shortDescr = shortDescr;
		this.leadContact = leadContact;
		this.cpAddr = cpAddr;
		this.addrLine1 = addrLine1;
		this.postcode = postcode;
		this.town = town;
		this.county = county;
		this.nation = nation;
		this.typeBusiness = typeBusiness;
		SICcode = sICcode;
		this.fullDescr = fullDescr;
		this.phoneNumber = phoneNumber;
		this.fax = fax;
		this.email = email;
		this.webAddress = webAddress;
		this.charNumber = charNumber;
		this.compNumber = compNumber;
		this.active = active;
	}

	public Directorate(String directorateName) {
		super();
		this.directorateName = directorateName;
	}

	public String getDirectorateName() {
		return directorateName;
	}

	public void setDirectorateName(String directorateName) {
		this.directorateName = directorateName;
	}

	public String getShortDescr() {
		return shortDescr;
	}

	public void setShortDescr(String shortDescr) {
		this.shortDescr = shortDescr;
	}

	public String getLeadContact() {
		return leadContact;
	}

	public void setLeadContact(String leadContact) {
		this.leadContact = leadContact;
	}

	public boolean isCpAddr() {
		return cpAddr;
	}

	public void setCpAddr(boolean cpAddr) {
		this.cpAddr = cpAddr;
	}

	public String getAddrLine1() {
		return addrLine1;
	}

	public void setAddrLine1(String addrLine1) {
		this.addrLine1 = addrLine1;
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

	public String getTypeBusiness() {
		return typeBusiness;
	}

	public void setTypeBusiness(String typeBusiness) {
		this.typeBusiness = typeBusiness;
	}

	public String getSICcode() {
		return SICcode;
	}

	public void setSICcode(String sICcode) {
		SICcode = sICcode;
	}

	public String getFullDescr() {
		return fullDescr;
	}

	public void setFullDescr(String fullDescr) {
		this.fullDescr = fullDescr;
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

	public String getCharNumber() {
		return charNumber;
	}

	public void setCharNumber(String charNumber) {
		this.charNumber = charNumber;
	}

	public String getCompNumber() {
		return compNumber;
	}

	public void setCompNumber(String compNumber) {
		this.compNumber = compNumber;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	
	
}
