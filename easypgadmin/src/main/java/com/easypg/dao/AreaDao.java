package com.easypg.dao;

import java.util.List;

import com.easypg.model.Area;

public interface AreaDao extends GenericDAO<Area>{

	List<Area> getActive();
	Area getFullObjById(int id);

	List<Area> getAllAreasByCityId(int cityId);
	Area getAllDetails(long areaId);
}
