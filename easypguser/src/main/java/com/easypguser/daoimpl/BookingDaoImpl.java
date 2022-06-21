package com.easypguser.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.dao.BookingDao;
import com.easypguser.model.Booking;
import com.easypguser.util.DbUtility;
import com.easypguser.util.Mailer;

@Repository("bookingDao")
@SessionAttributes("user")

public class BookingDaoImpl  extends GenericDaoImpl<Booking> implements BookingDao  {

	public List<Booking> getAllBookingsByLandlord(long userId) {
				List<Booking> list=DbUtility.getListData("select b.bookingId as bookingId,b.status as status ,b.pname as pname,b.userId as userId,	b.lname as lname,b.tname as tname,b.moveinDate as moveinDate FROM booking b INNER JOIN property p ON p.propertyId=b.propertyId WHERE p.userId="+userId, Booking.class);
			return list;
		}

	public long updateBookingStatus(long userId, String status) {
		Booking booking = super.getById(Booking.class, userId);
		booking.setStatus(status);
		if(booking.getStatus().equals("accept"))
		{
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", booking.getTemail(), "Hello,How r u?","your request for booking is accepted.");
		}
		if(booking.getStatus().equals("decline"))
		{
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", booking.getTemail(), "Hello,How r u?","your request for booking is declined.");
		}
		return super.updateObject(booking).getBookingId();
		
	}
	}

