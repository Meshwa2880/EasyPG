package com.easypg.dao;

import java.util.List;

import com.easypg.model.City;
import com.easypg.model.State;

public interface CityDao extends GenericDAO<City>{

	List<City> getActive();

	List<City> getAllCitiesByStateId(long stateId);
}
