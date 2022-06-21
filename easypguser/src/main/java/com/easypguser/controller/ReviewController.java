package com.easypguser.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.model.Booking;
import com.easypguser.model.Review;
import com.easypguser.service.ReviewService;
import com.easypguser.service.StateService;

@Controller
@RequestMapping("/review")
@SessionAttributes("user")

public class ReviewController {
	
	@Autowired
	ReviewService reviewservice;


	
	@RequestMapping("/addReview/{id}")
	public String addReview(@PathVariable("id") long id,@ModelAttribute("review") Review review,Model model)
			 {
		review.setPropertyId(id);

		long result1=reviewservice.addreview(review);
		if (result1 == 0) 
		{
			model.addAttribute("reviewError", "Something went wrong");
			return "redirect:/property/viewProperty/"+id;
		}
		return "redirect:/property/viewProperty/"+id;
	}


}
