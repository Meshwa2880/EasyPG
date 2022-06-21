package com.easypguser.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easypguser.model.Feedback;

import com.easypguser.service.FeedbackService;


@Controller
@RequestMapping("/feedback")
public class FeedbackController {


	@Autowired
	FeedbackService feedbackservice;
	
	
	@RequestMapping("/sendfeedback")
	public String sendfeedback(Model model)
	{
		
		Feedback feedback=new Feedback();
		model.addAttribute("feedback", feedback);
		model.addAttribute("edit",false);
		return "feedback";
	}
	@RequestMapping("/savefeedback")
	public String saveFeedback(@ModelAttribute("feedback") Feedback feedback)
	{
	
		feedbackservice.addFeedback(feedback);
		return "redirect:/feedback/sendfeedback";
	}
	
}