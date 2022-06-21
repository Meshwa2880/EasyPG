package com.easypg.service;

import java.util.List;

import com.easypg.model.City;
import com.easypg.model.State;

public interface CityService {

	public City updateCity(City city);
	public List<City> getAll();
	City addCity(City city);
	City getById(int id);
	City deleteCity(int id);
	public List<City> getAllCitiesByStateId(long stateId);
	
}
