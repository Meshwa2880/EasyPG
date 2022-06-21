package com.easypguser.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.easypguser.model.Property;

public interface PropertyService {

	public long addProperty(Property property, MultipartFile[] file);


	public int deleteProperty(long id);

	public List<Property> getAll();

	public long updateProperty(Property property, MultipartFile[] file);

	public long saveupdateProperty(Property property, MultipartFile file);

	public Property getById(long id);

	public List<Property> getAllPropertiesByUserId();

	public Property getAllDetails(long id);

	public List<Property> getAllRooms();

	public List<Property> getAllBeds();

	public List<Property> getAllApartments();

	public List<Property> getAllPropertiesByArea();

	public List<Property> getpropertyFilter(Property property);

	public List<Property> getrecent();

}
