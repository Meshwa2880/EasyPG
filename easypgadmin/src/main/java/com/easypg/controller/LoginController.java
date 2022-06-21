package com.easypg.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.easypg.model.Admin;
import com.easypg.service.LoginService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("admin")
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}
	@RequestMapping("/loggingIn")
	public String login(@ModelAttribute("log") Admin admin,Model model)
	{
		Admin newAdmin=loginService.login(admin);
		if(newAdmin==null)
		{
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/admin/login";
		}
		model.addAttribute("admin",newAdmin);
		return "redirect:/admin/home";
	}
	
	@RequestMapping("/forgotPassword")
	public String forgot() {
		return "/admin/forgotpassword";
	}

	@RequestMapping("/getPassword")
	public String password(@ModelAttribute("password") Admin admin, Model model) {
		Admin newAdmin = loginService.forgotPassword(admin);
		if (newAdmin == null) {
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/admin/adminList";
		}
		model.addAttribute("ADMIN", newAdmin);
		// model.addObject("admin", newAdmin);
		return "redirect:/admin/login";
	}
	
	@RequestMapping("/changePassword")
	public String change(Model model) {
		model.addAttribute("cpass", new Admin());
		return "/admin/changepassword";
	}

	@RequestMapping("/change")
	public String changePass(@ModelAttribute("cpass") Admin admin, Model model) {
		Admin newAdmin = loginService.changePass(admin);
		if (newAdmin == null) {
			model.addAttribute("errorMsg", "Old and new passwords are same...!!!");
			return "redirect:/admin/changePassword";
		}
		model.addAttribute("admin", newAdmin);
		return "redirect:/admin/home";
	}
	
	/*
	 * @RequestMapping("/dashboard") public String home1() { return "/admin/home"; }
	 */
}

