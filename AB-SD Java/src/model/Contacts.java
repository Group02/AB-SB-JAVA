package model;

import javax.persistence.*;

@Entity
@Table(name="contact")
public class Contacts {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="firstname")
	private String firstName;
	
	@Column(name="surname")
	private String surname;
	
	@Column(name="knownAs")
	private String knownAs;
	
	@Column(name="officePhone")
	private String officePhone;
	
	@Column(name="mobilePhone")
	private String mobilePhone;
	
	@Column(name="stHomePhone")
	private String stHomePhone;
	
	@Column(name="email")
	private String email;
	
	@Column(name="managerName")
	private String managerName;

	public Contacts() {
		super();
	}
	
	

	public Contacts(String firstName, String surname) {
		super();
		this.firstName = firstName;
		this.surname = surname;
	}



	public Contacts(int id, String firstName, String surname, String knownAs, String officePhone, String mobilePhone,
			String stHomePhone, String email, String managerName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.surname = surname;
		this.knownAs = knownAs;
		this.officePhone = officePhone;
		this.mobilePhone = mobilePhone;
		this.stHomePhone = stHomePhone;
		this.email = email;
		this.managerName = managerName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	
	

}
