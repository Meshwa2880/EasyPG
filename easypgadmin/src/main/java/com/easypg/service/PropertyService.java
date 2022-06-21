package com.easypg.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.easypg.model.Property;

public interface PropertyService {
	
	  public long addProperty(Property property, MultipartFile file);
	  public Property editProperty(long id);
	  public int deleteProperty(long id);
	  public List<Property> getAll(); 
	  public int updateProperty(Property property, MultipartFile file); 
	  public long saveupdateProperty(Property property, MultipartFile file);
	  public Property getById(long l);
	  public List<Property> getPropertiesByUserId(long userId);
	 

}


