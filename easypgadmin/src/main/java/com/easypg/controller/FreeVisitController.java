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

import com.easypg.model.FreeVisit;
import com.easypg.service.FreeVisitService;

import com.easypg.controller.LoginController;
import com.easypg.dao.FreeVisitDao;

@Controller
@RequestMapping("/freevisit")

public class FreeVisitController {

	@Autowired
	FreeVisitService freevisitService;

	@Autowired
	FreeVisitDao freevisitDao;

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

	@RequestMapping("/freevisitList")

	public String freevisitlist(Model model) {
		List<FreeVisit> list = freevisitService.getAll();
		model.addAttribute("freevisitList", list);
		return "freebooklist";
	}

}