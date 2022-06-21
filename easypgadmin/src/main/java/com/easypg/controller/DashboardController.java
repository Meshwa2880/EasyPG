package com.easypg.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.PropertyDao;
import com.easypg.model.Area;
import com.easypg.model.City;
import com.easypg.model.Property;
import com.easypg.model.State;
import com.easypg.service.AreaService;
import com.easypg.service.CityService;
import com.easypg.service.PropertyService;
import com.easypg.service.StateService;
@Controller
public class DashboardController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "redirect:/admin/login";
	}
	
	
}
