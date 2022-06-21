package com.easypguser.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "property")

public class Property {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long propertyId;
	private String title;
	private String status;
	private String type;
	@Transient
	private String lemail;
	@Transient
	private long mno;
	private long rent;
	private long beds;
	
	private long baths;
	private String propertyPicture;
	private String documentPicture; 
	private String onlyfor;
	private String furnished;
	private int rooms;
	private String propertyDesc;
	private String address;
	private long pincode;
	private int isActive;
	private int isDeleted;
	private Date createdDate;
	private Date modifiedDate;
	private long userId;
	
	@Transient
	private String userProfilePicture;
	private long areaId;
	@Transient
	private MultipartFile documentImage;
	@Transient
	private long city_id;
	@Transient
	private String aname;
	@Transient
	private long stateId;
	@Transient
	private String cname;
	@Transient
	private String sname;

	@Transient
	private String lname;

	@Transient
	private String fname;
	@Transient
	private String rentFilter;
	

	
	public String getUserProfilePicture() {
		return userProfilePicture;
	}
	public void setUserProfilePicture(String userProfilePicture) {
		this.userProfilePicture = userProfilePicture;
	}
	public String getLemail() {
		return lemail;
	}
	public void setLemail(String lemail) {
		this.lemail = lemail;
	}
	public long getMno() {
		return mno;
	}
	public void setMno(long mno) {
		this.mno = mno;
	}
	public String getRentFilter() {
		return rentFilter;
	}
	public void setRentFilter(String rentFilter) {
		this.rentFilter = rentFilter;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}

	

	
	public long getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(long propertyId) {
		this.propertyId = propertyId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public long getRent() {
		return rent;
	}
	public void setRent(long rent) {
		this.rent = rent;
	}
	public String getPropertyPicture() {
		return propertyPicture;
	}
	public void setPropertyPicture(String propertyPicture) {
		this.propertyPicture = propertyPicture;
	}
	public String getDocumentPicture() {
		return documentPicture;
	}
	public void setDocumentPicture(String documentPicture) {
		this.documentPicture = documentPicture;
	}
	public String getOnlyfor() {
		return onlyfor;
	}
	public void setOnlyfor(String onlyfor) {
		this.onlyfor = onlyfor;
	}
	public String getFurnished() {
		return furnished;
	}
	public void setFurnished(String furnished) {
		this.furnished = furnished;
	}
	public int getRooms() {
		return rooms;
	}
	public void setRooms(int rooms) {
		this.rooms = rooms;
	}
	public String getPropertyDesc() {
		return propertyDesc;
	}
	public void setPropertyDesc(String propertyDesc) {
		this.propertyDesc = propertyDesc;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public long getPincode() {
		return pincode;
	}
	public void setPincode(long pincode) {
		this.pincode = pincode;
	}
	
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public int getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public long getAreaId() {
		return areaId;
	}
	public void setAreaId(long areaId) {
		this.areaId = areaId;
	}
	public MultipartFile getDocumentImage() {
		return documentImage;
	}
	public void setDocumentImage(MultipartFile documentImage) {
		this.documentImage = documentImage;
	}
	public long getCity_id() {
		return city_id;
	}
	public void setCity_id(long city_id) {
		this.city_id = city_id;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public long getStateId() {
		return stateId;
	}
	public void setStateId(long stateId) {
		this.stateId = stateId;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public long getBeds() {
		return beds;
	}
	public void setBeds(long beds) {
		this.beds = beds;
	}
	public long getBaths() {
		return baths;
	}
	public void setBaths(long baths) {
		this.baths = baths;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	

}

