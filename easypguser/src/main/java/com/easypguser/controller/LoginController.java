package com.easypguser.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.easypguser.model.User;
import com.easypguser.service.LoginService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")

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
	public String login(@ModelAttribute("log") User user,Model model)
	{
		User newUser=loginService.login(user);
		if(newUser==null)
		{
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/user/login";
		}
		model.addAttribute("user",newUser);
		return "redirect:/user/home";
	}
	
	@RequestMapping("/forgotpassword")
	public String forgotpassword() {
		return "forgotpassword";
	}

	/*
	 * @RequestMapping("/getPassword") public String
	 * password(@ModelAttribute("password") User user, Model model) { User newUser =
	 * loginService.forgotPassword(user); if (newUser == null) {
	 * model.addAttribute("errorMsg", "Wrong Username or Password...!!!"); return
	 * "redirect:/user/login"; } model.addAttribute("USER", newUser); //
	 * model.addObject("user", newUser); return "redirect:/user/login"; }
	 */
	@RequestMapping("/changePassword")
	public String change(Model model) {
		model.addAttribute("cpass", new User());
		return "changepassword";
	}

	@RequestMapping("/change")
	public String changePass(@ModelAttribute("cpass") User user, Model model) {
		int result = loginService.changePass(user);
		if (result != 0) {
			if(result==1)
				model.addAttribute("errorMsg", "Old Password does not match...!!!");
			else if(result==2)
				model.addAttribute("errorMsg", "New Password and confirm password does not match...!!!");
			else if(result==3)
				model.addAttribute("errorMsg", "Old Password and new passwords are same...!!!");
			else
				model.addAttribute("errorMsg", "Something went wrong..Try again!!!");
			return "redirect:/user/changePassword";
		}
		User usr = (User) session.getAttribute("user");
		model.addAttribute("user",usr);
		return "redirect:/user/home";
	}


	
	@RequestMapping("/changepassword1")
	public String changepassword1() {
	
		return "changepassword1";
	}

	@RequestMapping("/newpassword")
	public String newpassword() {
		return "newpassword";
	}
	
	@RequestMapping("/changepass1")
	public String changepass1(@ModelAttribute("password") User user, Model model) {
		User newUser = loginService.forgotPassword(user);
		if (newUser == null) {
			model.addAttribute("errorMsg", "This email Id is not registered...!!!");
			return "redirect:/user/forgotpassword";
		}
		model.addAttribute("user", newUser);
		model.addAttribute("registration", false);
		return "redirect:/user/changepassword1";
	}
	
	@RequestMapping("/changepass2")
	public String changepass2(@ModelAttribute("cpass") User user, Model model) {
		int result = loginService.checkOTP(user);
		if (result == 1) {
			model.addAttribute("errorMsg", "Please enter correct otp...!!!");
			return "redirect:/user/changepassword1";
		}
		//model.addAttribute("User", newUser);
		//model.addAttribute("registration", false);
		return "redirect:/user/newpassword";
	}
	
	@RequestMapping("/newpass")
	public String newpassword(@ModelAttribute("npass") User user, Model model) {
		//User sUser = (User) session.getAttribute("user");
		User newUser = loginService.newPassword(user);
		if (newUser == null) {
			model.addAttribute("errorMsg", "Password & confirm password are not same...!!!");
			return "redirect:/user/newpassword";
		}
		model.addAttribute("User", newUser);
		return "redirect:/user/login";
	}
	
	
}
