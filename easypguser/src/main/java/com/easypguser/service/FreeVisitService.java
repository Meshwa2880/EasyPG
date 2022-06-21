package com.easypguser.service;

import java.util.List;

import com.easypguser.model.FreeVisit;

public interface FreeVisitService {
	public long addFreeVisit(FreeVisit freevisit);

	public List<FreeVisit> getAllFreeVisitsByLandlord();

	public long updateFreeVisitStatus(long bid, String status);


}
