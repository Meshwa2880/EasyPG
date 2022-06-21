package com.easypguser.serviceimpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.dao.UserDao;
import com.easypguser.model.User;
import com.easypguser.service.LoginService;
import com.easypguser.util.PasswordEncode;
import com.easypguser.util.RandomString;
import com.easypguser.util.Mailer;

@Service("loginService")
@Transactional
@SessionAttributes("user")
public class LoginServiceImpl implements LoginService{

	@Autowired
	UserDao userDao;

	@Autowired
	HttpSession session;
	
	public User login(User user) {
		user.setPassword(PasswordEncode.passwordEncode(user.getPassword()));
		return userDao.loginCheck(user);
	}
	
	public User forgotPassword(User user) {
		User a = userDao.forgotpassword(user);
		if (a!= null) 
		{
			int n = 6;
			String otp = RandomString.getNumericString(n);
			a.setOtp(otp);
			userDao.updateObject(a);
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", user.getEmail(), "Hello, Your OTP is ", otp);
		}
		return a;

	}

public int checkOTP(User user) {
		
		if (user.getOtp() != null) 
		{
			User sUser = (User) session.getAttribute("user");
			if(sUser.getOtp().equals(user.getOtp()))
			{
				return 0;
			}
		}
		return 1;
	}
	
	
	public User newPassword(User user) 
	{
		if(user.getCpassword().equals(user.getNpassword()))
		{	
			user.setPassword(PasswordEncode.passwordEncode(user.getNpassword()));
//			Admin a = adminDao.changepassword(admin);
//			if(a==null)
//				return null;
			User sUser = (User) session.getAttribute("user");
			
			sUser.setPassword(PasswordEncode.passwordEncode(user.getNpassword()));
			userDao.updateObject(sUser);
			//Mailer.send("maidinindia03@gmail.com", "mii@41926", admin.getEmailId(), "Hello,How r u?", a.getPassword());
			return sUser;
			
		}
		return null;
	}

	public int changePass(User user) {
		User usr =(User)session.getAttribute("user");
		User u = userDao.getById(User.class, usr.getUserId());
		if(!u.getPassword().equals(PasswordEncode.passwordEncode(user.getOldpassword()))){
			return 1;
		}else if(!user.getPassword().equals(user.getCpassword())) {
			return 2;
		}else if(user.getOldpassword().equals(user.getPassword())) {
			return 3;
		}
		u.setPassword(PasswordEncode.passwordEncode(user.getPassword()));
		User newUser = userDao.updateObject(u);
		if(newUser!=null)
			return 0;
		else
			return 4;
	}
}

	



