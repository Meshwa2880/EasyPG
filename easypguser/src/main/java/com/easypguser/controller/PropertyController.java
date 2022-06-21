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

import com.easypguser.model.Area;
import com.easypguser.model.City;
import com.easypguser.model.Property;
import com.easypguser.model.Review;
import com.easypguser.model.State;
import com.easypguser.service.AreaService;
import com.easypguser.service.CityService;
import com.easypguser.service.PropertyService;
import com.easypguser.service.ReviewService;
import com.easypguser.service.StateService;
import com.easypguser.dao.PropertyDao;

@Controller
@RequestMapping("/property")
@SessionAttributes("user")
public class PropertyController {

	@Autowired
	PropertyService propertyService;

	@Autowired
	PropertyDao propertyDao;

	@Autowired
	HttpSession session;

	@Autowired
	StateService stateservice;

	@Autowired
	CityService cityservice;

	@Autowired
	AreaService areaservice;
	
	@Autowired
	ReviewService reviewservice;


	@RequestMapping("/home")
	public String home(ModelMap model) {
		List<Property> list = propertyService.getAll();
		Property property=new Property();
		model.addAttribute("filters", property);
		model.addAttribute("property", list);
	
		return "home";
	}

	public String error() {
		return "error";
	}

	/*
	 * @RequestMapping("/propertyList")
	 * 
	 * public String propertylist(Model model) { List<Property>
	 * list=propertyService.getAll(); model.addAttribute("propertyList",list);
	 * return "propertylist"; }
	 */
	@RequestMapping("/myPropertyList")

	public String myPropertylist(Model model) {
		List<Property> list = propertyService.getAllPropertiesByUserId();
		model.addAttribute("propertyList", list);
		return "propertylist";
	}

	@RequestMapping("/submit")
	public String submitproperty(Model model) {
		Property property = new Property();
		List<State> liststate = stateservice.getAll();
		List<City> listcity = cityservice.getAll();
		List<Area> listarea = areaservice.getAll();
		model.addAttribute("liststate", liststate);
		model.addAttribute("listcity", listcity);
		model.addAttribute("listarea", listarea);

		model.addAttribute("property", property);
		// model.addAttribute("registration", true);
		model.addAttribute("edit", false);
		return "submitproperty";
	}

	@RequestMapping("/addProperty")
	public String addProperty(@ModelAttribute("property") Property property, BindingResult result, Model model,
			@RequestParam("propertyPicture") MultipartFile[] file) {

		long result1 = propertyService.addProperty(property, file);

		return "redirect:/property/myPropertyList";
	}

	@RequestMapping("/editProperty/{id}")
	public String editProperty(@PathVariable("id") long id, ModelMap model) {
		Property property = propertyService.getAllDetails(id);
		List<State> liststate = stateservice.getAll();
		List<City> listcity = cityservice.getAll();
		List<Area> listarea = areaservice.getAll();
		model.addAttribute("liststate", liststate);
		model.addAttribute("listcity", listcity);
		model.addAttribute("listarea", listarea);
		model.addAttribute("property", property);
		model.addAttribute("edit", true);
		return "submitproperty";
	}

	@RequestMapping("/deleteProperty/{id}")
	public String deleteProperty(@PathVariable("id") long id) {

		propertyService.deleteProperty(id);

		return "redirect:/property/myPropertyList";
	}

	@RequestMapping("/updateProperty")
	public String updateProperty(@ModelAttribute("property") Property property, BindingResult result, Model model,
			@RequestParam("propertyPicture") MultipartFile[] file) {
		long res = propertyService.updateProperty(property, file);
		return "redirect:/property/myPropertyList";
	}

	@RequestMapping("/viewProperty/{id}")
	public String viewProperty(@PathVariable("id") long id, ModelMap model) {
		Property property = propertyService.getAllDetails(id);
		Review review=new Review();
		model.addAttribute("review",review);
		List<Review> list = reviewservice.getReviewsByPropertyid(property.getPropertyId());
		model.addAttribute("reviewList",list);
		model.addAttribute("property", property);
		return "propertysingle";
	}

	@RequestMapping("/propertyGrid")
	public String propertyGrid(ModelMap model) {
		List<Property> list = propertyService.getAll();
		List<City> listcity = cityservice.getAll();
		Property property=new Property();
		model.addAttribute("listcity", listcity);
		model.addAttribute("filters", property);
		model.addAttribute("property", list);
		return "propertygrid";
	}

	@RequestMapping("/rooms")
	public String propertyRooms(ModelMap model) {
		List<Property> list = propertyService.getAllRooms();
		Property property=new Property();
		model.addAttribute("filters", property);
		model.addAttribute("property", list);
		return "propertygrid";
	}

	@RequestMapping("/beds")
	public String propertyBeds(ModelMap model) {
		List<Property> list = propertyService.getAllBeds();
		Property property=new Property();
		model.addAttribute("filters", property);
		model.addAttribute("property", list);
		return "propertygrid";
	}

	@RequestMapping("/apartments")
	public String propertyApartment(ModelMap model) {
		List<Property> list = propertyService.getAllApartments();
		Property property=new Property();
		model.addAttribute("filters", property);
		model.addAttribute("property", list);
		return "propertygrid";
	}
	@RequestMapping("/filters")
	public String getpropertyFilter(@ModelAttribute("filters") Property property, ModelMap model) {
		List<Property> list = propertyService.getpropertyFilter(property);
		List<City> listcity = cityservice.getAll();
		//Property property1=new Property();
		model.addAttribute("filters", property);
		model.addAttribute("listcity",listcity);
		model.addAttribute("property", list);
		return "propertygrid";
	}
	
		/*
	 * @RequestMapping("/search") public String searchproperty(Model model) {
	 * //Property property = new Property(); List<State>
	 * liststate=stateservice.getAll(); List<City> listcity=cityservice.getAll();
	 * List<Area> listarea=areaservice.getAll(); model.addAttribute("liststate",
	 * liststate); model.addAttribute("listcity", listcity);
	 * model.addAttribute("listarea", listarea); List<Property> list =
	 * propertyService.getAllPropertiesByArea(); model.addAttribute("property",
	 * list); return "propertygrid"; }
	 */
}