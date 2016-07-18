package model;

import java.io.Serializable;

import javax.persistence.*;

@SuppressWarnings("serial")
@Entity
@Table(name="addressLookup")
public class AddressLookup implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="postcode")
	private String postCode;
	
	@Column(name="address")
	private String address;
	
	@Column(name="town")
	private String town;
	
	@Column(name="county")
	private String county;
	
	@Column(name="country")
	private String country;
	
	public AddressLookup() {
		super();
	}

	
	public AddressLookup(String address, String postCode) {
		super();
		this.address = address;
		this.postCode = postCode;
	}

	public AddressLookup(String address, String postCode, String town, String county, String country) {
		super();
		this.town = town;
		this.county = county;
		this.country = country;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
}
