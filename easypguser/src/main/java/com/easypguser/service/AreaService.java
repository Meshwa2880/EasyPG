package com.easypguser.service;

import java.util.List;

import com.easypguser.model.Area;
import com.easypguser.model.City;

public interface AreaService {

    public List<Area> getAll();
	
	public List<Area> getAllAreasByCityId(long cityId);
}
