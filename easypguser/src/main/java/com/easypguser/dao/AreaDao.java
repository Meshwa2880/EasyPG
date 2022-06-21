package com.easypguser.dao;

import java.util.List;

import com.easypguser.model.Area;

public interface AreaDao extends GenericDAO<Area>{

	public List<Area> getAll();
	public List<Area> getAreasByCityId(long cityId);
	public Area getAllDetails(long areaId);
	}
