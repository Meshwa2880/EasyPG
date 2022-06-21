package com.easypguser.dao;

import java.util.List;


import com.easypguser.model.Booking;
import com.easypguser.model.Property;


public interface BookingDao extends GenericDAO<Booking>{
	//public long addBooking(Booking booking);
	public  List<Booking> getAllBookingsByLandlord(long userId);

	public long updateBookingStatus(long uid, String status);
}
