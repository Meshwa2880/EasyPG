package com.easypguser.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.dao.PropertyDao;
import com.easypguser.model.Area;
import com.easypguser.model.City;
import com.easypguser.model.Property;
import com.easypguser.model.State;
import com.easypguser.service.AreaService;
import com.easypguser.service.CityService;
import com.easypguser.service.PropertyService;
import com.easypguser.service.StateService;
@Controller
public class DashboardController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "redirect:/user/login";
	}
	
	
}
