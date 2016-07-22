package model;

import javax.persistence.*;

@Entity
@Table(name="Team")
public class Team {

	@Id
	@Column(name="teamname")
	private String teamName;
	
	@Column(name="shortdes")
	private String shortDes;
	
	@Column(name="leadcontact")
	private String leadContact;
	
	@Column(name="address")
	private String address;
	
	@Column(name="status")
	private boolean status;
	
	@Column(name="postcode")
	private String postCode;
	
	@Column(name="town")
	private String town;
	
	@Column(name="county")
	private String county;
	
	@Column(name="nation")
	private String nation;
	
	@Column(name="type")
	private String typeOfBu;
	
	@Column(name="SIC")
	private String sicCode;
	
	@Column(name="fulldes")
	private String fullDes;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="fax")
	private String fax;
	
	@Column(name="mail")
	private String mail;
	
	@Column(name="WA")
	private String WA;
	
	public Team() {
		super();
	}

	public Team(String teamName, String address) {
		super();
		this.teamName = teamName;
		this.address = address;
	}

	public Team(String teamName, String shortDes, String leadContact, String address, boolean status, String postCode,
			String town, String county, String nation, String typeOfBu, String sicCode, String fullDes, String phone,
			String fax, String mail, String wA) {
		super();
		this.teamName = teamName;
		this.shortDes = shortDes;
		this.leadContact = leadContact;
		this.address = address;
		this.status = status;
		this.postCode = postCode;
		this.town = town;
		this.county = county;
		this.nation = nation;
		this.typeOfBu = typeOfBu;
		this.sicCode = sicCode;
		this.fullDes = fullDes;
		this.phone = phone;
		this.fax = fax;
		this.mail = mail;
		WA = wA;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getShortDes() {
		return shortDes;
	}

	public void setShortDes(String shortDes) {
		this.shortDes = shortDes;
	}

	public String getLeadContact() {
		return leadContact;
	}

	public void setLeadContact(String leadContact) {
		this.leadContact = leadContact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
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

	public String getTypeOfBu() {
		return typeOfBu;
	}

	public void setTypeOfBu(String typeOfBu) {
		this.typeOfBu = typeOfBu;
	}

	public String getSicCode() {
		return sicCode;
	}

	public void setSicCode(String sicCode) {
		this.sicCode = sicCode;
	}

	public String getFullDes() {
		return fullDes;
	}

	public void setFullDes(String fullDes) {
		this.fullDes = fullDes;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getWA() {
		return WA;
	}

	public void setWA(String wA) {
		WA = wA;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
}
