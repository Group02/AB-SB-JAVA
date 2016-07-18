package model;

import java.io.Serializable;

import javax.persistence.*;

@SuppressWarnings("serial")
@Entity
@Table(name="businessLookup")
public class BusinessLookup implements Serializable{

	@Id
	@Column(name="SICcode")
	private String SIC_Code;
	
	@Column(name="business")
	private String businessName;
	
	public BusinessLookup() {
		super();
	}

	public BusinessLookup(String sIC_Code, String businessName) {
		super();
		SIC_Code = sIC_Code;
		this.businessName = businessName;
	}

	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	public String getSIC_Code() {
		return SIC_Code;
	}

	public void setSIC_Code(String sIC_Code) {
		SIC_Code = sIC_Code;
	}
	
}
