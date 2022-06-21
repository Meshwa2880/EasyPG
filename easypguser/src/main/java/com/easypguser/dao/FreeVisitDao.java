package com.easypguser.dao;

import java.util.List;

import com.easypguser.model.Booking;
import com.easypguser.model.FreeVisit;

public interface FreeVisitDao extends GenericDAO<FreeVisit> {
	public  List<FreeVisit> getAllFreeVisitsByLandlord(long userId);

	public long updateFreeVisitStatus(long uid, String status);

}
