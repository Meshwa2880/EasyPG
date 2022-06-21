package com.easypg.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.easypg.model.Booking;
import com.easypg.service.BookingService;

import com.easypg.controller.LoginController;
import com.easypg.dao.BookingDao;

@Controller
@RequestMapping("/booking")

public class BookingController {

	@Autowired
	BookingService bookingService;

	@Autowired
	BookingDao bookingDao;

	@Autowired
	HttpSession session;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/error")
	public String error() {
		return "error";
	}

	@RequestMapping("/bookingList")

	public String bookinglist(Model model) {
		List<Booking> list = bookingService.getAll();
		model.addAttribute("bookingList", list);
		return "bookinglist";
	}

}