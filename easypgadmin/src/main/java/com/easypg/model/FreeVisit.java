package com.easypg.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "bookfreevisit")

public class FreeVisit {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long visitId;
	private long userId;
	private long propertyId;
	//private String visitDate;
	private String status;
	private Timestamp visitTime;
	private String lname;
	private String tname;
	private String pname;
	private String temail;
	private String lemail;
	
	
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getLemail() {
		return lemail;
	}
	public void setLemail(String lemail) {
		this.lemail = lemail;
	}
	public long getVisitId() {
		return visitId;
	}
	public void setVisitId(long visitId) {
		this.visitId = visitId;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public long getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(long propertyId) {
		this.propertyId = propertyId;
	}

	/*
	 * public String getVisitDate() { return visitDate; } public void
	 * setVisitDate(String visitDate) { this.visitDate = visitDate; }
	 */
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	/*
	 * public Timestamp getVisitTime() { return visitTime; } public void
	 * setVisitTime(Timestamp visitTime) { this.visitTime = visitTime; }
	 */
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Timestamp getVisitTime() {
		return visitTime;
	}
	public void setVisitTime(Timestamp visitTime) {
		this.visitTime = visitTime;
	}
	
	
	

}
