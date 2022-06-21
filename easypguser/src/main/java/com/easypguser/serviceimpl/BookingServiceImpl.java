package com.easypguser.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.easypguser.util.Mailer;
import com.easypguser.dao.BookingDao;
import com.easypguser.dao.PropertyDao;
import com.easypguser.dao.UserDao;
import com.easypguser.model.Booking;
import com.easypguser.model.Property;
import com.easypguser.model.User;
import com.easypguser.service.BookingService;

@Service("bookingservice")
@Transactional
@SessionAttributes("user")

public class BookingServiceImpl implements BookingService {
	@Autowired
	BookingDao bookingDao;

	@Autowired
	HttpSession session;
	@Autowired
	UserDao userDao;
	@Autowired
	PropertyDao propertyDao;

	public long addBooking(Booking booking) {
		
		
	booking.setBookingDate(new Date(System.currentTimeMillis()));
	User ad = (User) session.getAttribute("user");
	booking.setUserId(ad.getUserId());
	booking.setTname(ad.getFname());
	//User u = userDao.getById(User.class,booking.getUserId());
	booking.setTemail(ad.getEmail());
	Property p = propertyDao.getById(Property.class, booking.getPropertyId());
	User l=userDao.getById(User.class, p.getUserId());
	booking.setPname(p.getTitle());
	booking.setLname(l.getFname());
	booking.setLemail(l.getEmail());
	booking.setStatus("pending");
	Booking b = bookingDao.saveObject(booking);
	if(booking!=null)
	{
		Mailer.send("easypg123@gmail.com", "easypgmtv@123", booking.getLemail(), "Hello,How r u?","your property is requested for booking please provide your response.");
	}
	return 0;
}

	public List<Booking> getAllBookingsByLandlord() {
			User ad = (User) session.getAttribute("user");
			
			return bookingDao.getAllBookingsByLandlord(ad.getUserId());
		}
	public long updateBookingStatus(long uid, String status) {
		return bookingDao.updateBookingStatus(uid, status);
	}
	}



