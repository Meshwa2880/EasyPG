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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.easypguser.model.City;
import com.easypguser.model.Property;
import com.easypguser.model.State;
import com.easypguser.model.User;
import com.easypguser.model.Area;
import com.easypguser.service.AreaService;
import com.easypguser.service.CityService;
import com.easypguser.service.PropertyService;
import com.easypguser.service.StateService;
import com.easypguser.service.UserService;
import com.easypguser.controller.LoginController;
import com.easypguser.dao.UserDao;

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
	PropertyService propertyService;
	
	@Autowired
	StateService stateservice;
	
	@Autowired
	CityService cityservice;

	@Autowired
	AreaService areaservice;


	@RequestMapping("/home")
	public String home(ModelMap model) {
		List<Property> list = propertyService.getrecent();
		Property property=new Property();
		model.addAttribute("filters", property);
		model.addAttribute("property", list);
		
		return "home";
	}
	@RequestMapping("/tenancyPolicy")
	public String tenancyPolicy() {
		return "policies";
	}
	@RequestMapping("/aboutUs")
	public String aboutUs() {
		return "about";
	}
	@RequestMapping("/contactUs")
	public String contactUs() {
		return "contact";
	}
	@RequestMapping("/terms")
	public String terms() {
		return "terms";
	}
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	@RequestMapping("/services")
	public String services() {
		return "services";
	}
	
	@RequestMapping("/otp")
	public String otp()
	{
		return "otp";
	}
	@RequestMapping("/submitproperty")
	public String submitproperty() {
		return "submitproperty";
	}
	
	@RequestMapping("/propertysingle")
	public String propertysingle() {
		return "propertysingle";
	}
	@RequestMapping("/propertygrid")
	public String propertygrid() {
		return "propertygrid";
	}
	@RequestMapping("/feedback")
	public String feedback() {
		return "feedback";
	}
	
	
	
	@RequestMapping("/logout")
	public String logout(Model model)
	{	
		User user = new User();
		model.addAttribute("user",user);
		return "login";
	}

	@RequestMapping("/error")
	public String error() {
			return "error";
		}
	
	
	@RequestMapping("/registration")
	public String registrationpage(Model model) {
		User user = new User();
		List<State> liststate=stateservice.getAll();
		List<City> listcity=cityservice.getAll();
		List<Area> listarea=areaservice.getAll();
		model.addAttribute("liststate", liststate);
		model.addAttribute("listcity", listcity);
		model.addAttribute("listarea", listarea);
		model.addAttribute("user", user);
		//model.addAttribute("registration", true);
		model.addAttribute("edit", false);
		return "registration";
	}

	@RequestMapping("/addUser")
	public String registrationPage(@ModelAttribute("user") User user,BindingResult result, Model model,
			@RequestParam("profilePicture") MultipartFile file) {
		int result1 = userService.addUser(user,file);
		if (result1 == 1) 
		{
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/user/registration";
		}
		if (result1 == 2) 
		{
			model.addAttribute("errorMsg", "Password & confirm password are not same...!!!");
			return "redirect:/user/registration";
		}
		//User newUser = (User) session.getAttribute("user");
		//model.addAttribute("user", newUser);
		//model.addAttribute("registration", true);
		return "redirect:/user/home";
	}
	@RequestMapping("/editProfile")
	public String editProfile(Model model) {
		User user = (User) session.getAttribute("user");
		User user1=userService.getAllDetails(user.getUserId());
		List<State> liststate=stateservice.getAll();
		List<City> listcity=cityservice.getAll();
		List<Area> listarea=areaservice.getAll();
		model.addAttribute("liststate", liststate);
		model.addAttribute("listcity", listcity);
		model.addAttribute("listarea", listarea);
		model.addAttribute("user1", user);
		model.addAttribute("registration", false);
		model.addAttribute("edit", true);
		return "registration";
	}
	@RequestMapping("/myprofile")
	public String viewProfile(Model model) 
	{
		User user = (User) session.getAttribute("user");
		model.addAttribute("view", user);
		return "myprofile";
	}
	@RequestMapping("/deleteUser")
	public String deleteUser(Model model) 
	{
		User user = (User) session.getAttribute("user");
		int result1 = userService.deleteUser(user.getUserId());
		User user1 = new User();
		model.addAttribute("user",user1);
		return "redirect:/user/login";
	}
	/*
	 * @RequestMapping("/checkOtp") public String checkOtp(@ModelAttribute("cpass")
	 * User user, Model model) {
	 * 
	 * int result = userService.checkOTP(user); if (result == 1) {
	 * model.addAttribute("errorMsg", "Please enter correct otp...!!!"); return
	 * "redirect:/user/changepassword1"; } User newUser = (User)
	 * session.getAttribute("user"); model.addAttribute("User", newUser); return
	 * "redirect:/user/home"; }
	 */
	
	@RequestMapping("/updateUser")
	public String updateUser(@ModelAttribute("user") User user,BindingResult result, Model model,
			@RequestParam("profilePicture") MultipartFile file) {
		long result1 = userService.updateUser(user,file);
		
		
		if (result1 == 1) 
		{
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/user/registration";
		}
		return "redirect:/user/home";
	}
	

		@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) { 
	    model.addAttribute("login", new LoginController()); 
	    return "login"; 
	}
}