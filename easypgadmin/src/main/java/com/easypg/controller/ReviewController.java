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

import com.easypg.model.Review;
import com.easypg.service.ReviewService;

import com.easypg.controller.LoginController;
import com.easypg.dao.ReviewDao;

@Controller
@RequestMapping("/review")

public class ReviewController {

	@Autowired
	ReviewService reviewService;

	@Autowired
	ReviewDao reviewDao;

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

	@RequestMapping("/reviewList")

	public String reviewlist(Model model) {
		List<Review> list = reviewService.getAll();
		model.addAttribute("reviewList", list);
		return "reviewlist";
	}

}