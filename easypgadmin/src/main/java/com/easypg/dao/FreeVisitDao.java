package com.easypg.dao;

import java.util.List;

import com.easypg.model.Area;
import com.easypg.model.FreeVisit;
import com.easypg.model.FreeVisit;

public interface FreeVisitDao extends GenericDAO<FreeVisit> {
	public List<FreeVisit> getActive();

}