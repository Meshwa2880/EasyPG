package com.easypg.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.BookingDao;
import com.easypg.model.Admin;
import com.easypg.model.Booking;
import com.easypg.util.DbUtility;

@Repository("bookingDao")
@SessionAttributes("user")

public class BookingDaoImpl extends GenericDaoImpl<Booking> implements BookingDao {

	@Autowired
	HttpSession session;
	public Booking saveupdateBooking(Booking booking) {
		// TODO Auto-generated method stub
		return super.saveUpdateObject(booking);
	}
	public List<Booking> getActive() {
		return (List<Booking>) super.getByQuery("FROM Booking b");
		
	}
	
}
