 package com.easypguser.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.easypguser.dao.BookingDao;
import com.easypguser.dao.PropertyDao;
import com.easypguser.model.Booking;
import com.easypguser.model.Property;
import com.easypguser.service.BookingService;
import com.easypguser.service.PropertyService;

@Controller
@RequestMapping("/booking")
@SessionAttributes("user")

public class BookingController {
	@Autowired
	BookingService bookingService;
	
	@Autowired
	BookingDao bookingDao;

	@Autowired
	HttpSession session;
	
	@RequestMapping("/confirmBooking/{id}")
	public String booking(@PathVariable("id") long id,Model model)
	{
		Booking booking=new Booking();
		booking.setPropertyId(id);
		model.addAttribute("booking", booking);

		model.addAttribute("edit", false);
		return "confirmbooking";
		
	}
	@RequestMapping("/addBooking")
	public String addBooking(@ModelAttribute("booking") Booking booking,Model model)
			 {

		long result1=bookingService.addBooking(booking);
		
		return "landlordresponse";
	}
	@RequestMapping("/myBookingList")
	
	public String myBookinglist(Model model) {
		List<Booking> list=bookingService.getAllBookingsByLandlord();
		model.addAttribute("bookingList",list);
		return "landlordbookinglist";
	}
	@RequestMapping("bookingStatus/{bid}/{status}")
	public String bookingStatus(@PathVariable long bid, @PathVariable String status) {
		long result = bookingService.updateBookingStatus(bid, status);
		return "redirect:/booking/myBookingList";
	}

	
	

}
