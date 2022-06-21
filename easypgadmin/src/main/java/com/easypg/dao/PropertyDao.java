package com.easypg.dao;

import java.util.List;

import com.easypg.model.Area;
import com.easypg.model.Property;
import com.easypg.model.Property;

public interface PropertyDao extends GenericDAO<Property> {
	public List<Property> getActive();

	public List<Property> getPropertiesByUserId(long userId);
	
}