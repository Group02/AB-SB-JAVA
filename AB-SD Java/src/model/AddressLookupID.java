package model;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.AccessType;

public class AddressLookupID implements Serializable{
	
	private String address;
	
	private String postCode;
	
	public AddressLookupID() {
		super();
	}
	
	public AddressLookupID(String address, String postCode) {
		super();
		this.address = address;
		this.postCode = postCode;
	}


//	public String getAddress() {
//		return address;
//	}
//	@Embedded
//	public void setAddress(String address) {
//		this.address = address;
//	}
////
////	public String getPostCode() {
////		return postCode;
////	}
////
////	public void setPostCode(String postCode) {
////		this.postCode = postCode;
////	}

	
	
}
