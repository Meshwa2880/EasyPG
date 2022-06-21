package com.easypg.service;

import java.util.List;

import com.easypg.model.Area;
import com.easypg.model.City;

public interface AreaService {

	public Area updateArea(Area area);
	public List<Area> getAll();
	Area addArea(Area area);
	Area getById(int id);
	Area deleteArea(int id);
	public List<Area> getAllAreasByCityId(int city_id);
	
}
