package com.easypg.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.easypg.model.Booking;

public interface BookingService {
	
	  public List<Booking> getAll(); 
	 

}


