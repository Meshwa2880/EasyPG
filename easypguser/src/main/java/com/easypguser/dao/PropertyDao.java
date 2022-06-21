package com.easypguser.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.easypguser.model.Property;


public interface PropertyDao extends GenericDAO<Property> {
	public long addProperty(Property property);

	public List<Property> getActive();

	public List<Property> getPropertiesByUserId(long userId);

	public List<Property> getRooms();

	public List<Property> getBeds();

	public List<Property> getApartments();

	public List<Property> getAllPropertiesByArea();
	
	public List<Property> getpropertyFilter(Property property);
	
	public List<Property> getrecent();

}