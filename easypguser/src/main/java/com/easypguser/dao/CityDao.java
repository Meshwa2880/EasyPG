package com.easypguser.dao;

import java.util.List;

import com.easypguser.model.City;
import com.easypguser.model.State;

public interface CityDao extends GenericDAO<City>{

	public List<City> getAll();
	public City getById(long id);
	public boolean deleteCity(long id);
	public long addCity(City city);
	public City editCity(long id);
	public List<City> getAllCitiesByStateId(long stateId);
	}
