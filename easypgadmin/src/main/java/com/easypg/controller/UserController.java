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

import com.easypg.model.Area;
import com.easypg.model.City;
import com.easypg.model.State;
import com.easypg.model.User;
import com.easypg.service.AreaService;
import com.easypg.service.CityService;
import com.easypg.service.StateService;
import com.easypg.service.UserService;
import com.easypg.controller.LoginController;
import com.easypg.dao.UserDao;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	UserDao userDao;

	@Autowired
	HttpSession session;
	
	@Autowired
	StateService stateservice;
	
	@Autowired
	CityService cityservice;
	
	@Autowired
	AreaService areaservice;
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/userList")
	public String userList(Model model) {
		List<User> list = userService.getAll();
		model.addAttribute("userList", list);
		return "/user/manageuser";
	}
	@RequestMapping("/error")
	public String error() {
			return "error";
		}
	
	
	@RequestMapping("/userRegistrationPage")
	public String registrationpage(Model model) {
		User user = new User();
		List<State> liststate=stateservice.getAll();
		model.addAttribute("liststate",liststate);
		List<City> listcity=cityservice.getAll();
		model.addAttribute("listcity",listcity);
		List<Area> listarea=areaservice.getAll();
		model.addAttribute("listarea", listarea);
		
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		return "/user/adduser";
	}

	@RequestMapping("/addUser")
	public String registrationpage(@ModelAttribute("user") User user, BindingResult result, Model model,
			@RequestParam("profileImage") MultipartFile file) {
		long result1 = userService.addUser(user, file);
		
		  if (result1 == 1) { model.addAttribute("errorMsg",
		  "It is already exists...!!!"); return "redirect:/user/adduser"; }
		 
		return "redirect:/user/userList";
	}

	@RequestMapping("deleteUser/{id}")
	public String deleteUser(@PathVariable("id") int id) {

		userService.deleteUser(id);
		return "redirect:/user/userList";
	}


	@RequestMapping("/editUser/{id}")
	public String editUser(@PathVariable("id") int id, ModelMap model) {
		User user = userService.getById(id);
		List<State> liststate=stateservice.getAll();
		List<City> listcity=cityservice.getAll();
		List<Area> listarea=areaservice.getAll();
		model.addAttribute("liststate", liststate);
		model.addAttribute("listcity", listcity);
		model.addAttribute("listarea", listarea);
		model.addAttribute("user", user);
		model.addAttribute("registration", false);
		model.addAttribute("edit", true);
		
		return "/user/adduser";
	}
	
	
	@RequestMapping("/viewUser/{id}")
	public String viewUser(@PathVariable("id") int id, ModelMap model) {
		//User user = userService.getAllDetails(id);
		User user = userService.getById(id);
		List<State> liststate=stateservice.getAll();
		List<City> listcity=cityservice.getAll();
		List<Area> listarea=areaservice.getAll();
		model.addAttribute("liststate", liststate);
		model.addAttribute("listcity", listcity);
		model.addAttribute("listarea", listarea);
		model.addAttribute("user", user);
		/*
		 * model.addAttribute("registration", false); model.addAttribute("edit", true);
		 */
		
		model.addAttribute("viewdetails", user);
		//model.addAttribute("edit", true);
		return "/user/viewuser";
	}
	
	@RequestMapping("/updateUser")
	public String updateUser(@ModelAttribute("user") User user, BindingResult result, Model model,
			@RequestParam("profileImage") MultipartFile file) {
		int res=userService.updateUser(user, file);
		return "redirect:/user/userList";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) { 
	    model.addAttribute("login", new LoginController()); 
	    return "login"; 
	}
	@RequestMapping("/landlordList")
	public String landlordList(Model model) {
		List<User> list = userService.getAllLandlords();
		model.addAttribute("userList", list);
		return "user/manageuser";
	}
	@RequestMapping("/tenantList")
	public String tenantList(Model model) {
		List<User> list = userService.getAllTenants();
		model.addAttribute("userList", list);
		return "user/manageuser";
	}
}