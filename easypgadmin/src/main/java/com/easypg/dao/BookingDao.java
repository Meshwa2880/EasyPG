package com.easypg.dao;

import java.util.List;

import com.easypg.model.Area;
import com.easypg.model.Booking;
import com.easypg.model.Booking;

public interface BookingDao extends GenericDAO<Booking> {
	public List<Booking> getActive();

}