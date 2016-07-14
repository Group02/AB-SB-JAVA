package model;

public class Contact {
	
	private String firstName;
	private String surname;
	private String knownAs;
	private String officePhone;
	private String mobilePhone;
	private String stHomePhone;
	private String email;
	private Contact managerName;
	
	public Contact() {
	}

	public Contact(String firstName, String surname, String knownAs,
			String officePhone, String mobilePhone, String stHomePhone,
			String email, Contact managerName) {
		super();
		this.firstName = firstName;
		this.surname = surname;
		this.knownAs = knownAs;
		this.officePhone = officePhone;
		this.mobilePhone = mobilePhone;
		this.stHomePhone = stHomePhone;
		this.email = email;
		this.managerName = managerName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getKnownAs() {
		return knownAs;
	}

	public void setKnownAs(String knownAs) {
		this.knownAs = knownAs;
	}

	public String getOfficePhone() {
		return officePhone;
	}

	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getStHomePhone() {
		return stHomePhone;
	}

	public void setStHomePhone(String stHomePhone) {
		this.stHomePhone = stHomePhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Contact getManagerName() {
		return managerName;
	}

	public void setManagerName(Contact managerName) {
		this.managerName = managerName;
	}
	

}
