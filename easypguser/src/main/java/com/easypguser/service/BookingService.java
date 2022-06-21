package com.easypguser.service;

import java.util.List;

import com.easypguser.model.Booking;

public interface BookingService {
	public long addBooking(Booking booking);

	public List<Booking> getAllBookingsByLandlord();

	public long updateBookingStatus(long bid, String status);

}
