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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.easypguser.dao.FreeVisitDao;
import com.easypguser.dao.PropertyDao;
import com.easypguser.model.FreeVisit;
import com.easypguser.model.Property;
import com.easypguser.service.FreeVisitService;
import com.easypguser.service.PropertyService;

@Controller
@RequestMapping("/freevisit")
@SessionAttributes("user")

public class FreeVisitController {
	@Autowired
	FreeVisitService freevisitService;
	
	@Autowired
	FreeVisitDao freevisitDao;

	@Autowired
	HttpSession session;
	
	@RequestMapping("/confirmFreeVisit/{id}")
	public String freevisit(@PathVariable("id") long id,Model model)
	{
		FreeVisit freevisit=new FreeVisit();
		freevisit.setPropertyId(id);
		model.addAttribute("freevisit", freevisit);

		model.addAttribute("edit", false);
		return "freevisit";
		
	}
	@RequestMapping("/addFreeVisit")
	public String addFreeVisit(@ModelAttribute("freevisit") FreeVisit freevisit,Model model)
			 {

		long result1=freevisitService.addFreeVisit(freevisit);
		
		return "landlordresponse";
	}
	@RequestMapping("/myFreeVisitList")
	
	public String myFreeVisitlist(Model model) {
		List<FreeVisit> list=freevisitService.getAllFreeVisitsByLandlord();
		model.addAttribute("freevisitList",list);
		return "landlordfreevisitlist";
	}
	@RequestMapping("freevisitStatus/{bid}/{status}")
	public String freevisitStatus(@PathVariable long bid, @PathVariable String status) {
		long result = freevisitService.updateFreeVisitStatus(bid, status);
		return "redirect:/freevisit/myFreeVisitList";
	}

	
	

}

