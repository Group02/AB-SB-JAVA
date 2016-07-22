package model;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "SupportingMaterials")
public class SupportingMaterial {
	
	@Id
	@Column(name = "url")
	private String url;	// Mandatory fields
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "type")
	private String type; // Doc / PDF / Excel
	
	@Column(name = "addedBy")
	private String addedBy; // Current User (email)
	
	@Column(name = "addedDate")
	private Date addedDate = new Date(); // Current date
	
	@Column(name = "isActive")
	private boolean isActive = true; // 1 (true): Active - 2 (false): In Active

	public SupportingMaterial() {
	}

	public SupportingMaterial(String url, String description, String type,
			String addedBy, Date addedDate, boolean isActive) {
		super();
		this.url = url;
		this.description = description;
		this.type = type;
		this.addedBy = addedBy;
		this.addedDate = addedDate;
		this.isActive = isActive;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAddedBy() {
		return addedBy;
	}

	public void setAddedBy(String addedBy) {
		this.addedBy = addedBy;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

}
