package com.easypg.serviceimpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.easypg.dao.AdminDao;
import com.easypg.model.Admin;
import com.easypg.service.LoginService;
import com.easypg.util.PasswordEncode;
import com.easypg.util.RandomString;
import com.easypg.util.Mailer;

@Service("loginService")
@Transactional
public class LoginServiceImpl implements LoginService{

	@Autowired
	AdminDao adminDao;

	@Autowired
	HttpSession session;
	
	public Admin login(Admin admin) {
		String password = admin.getPassword();
		admin.setPassword(PasswordEncode.passwordEncode(password));
		return adminDao.loginCheck(admin);
	}
	
	public Admin forgotPassword(Admin admin) {
		Admin a = adminDao.forgotpassword(admin);
		if (a.getPassword() != null) 
		{
			int n = 8;
			String password = RandomString.getAlphaNumericString(n);
			a.setPassword(PasswordEncode.passwordEncode(password));
			adminDao.updateObject(a);
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", admin.getEmail(), "Hello, Your New Password is ", password);
		}
		return a;

	}

	public Admin changePass(Admin admin) {
		if(admin.getCpassword().equals(admin.getNpassword()))
		{	
			admin.setPassword(PasswordEncode.passwordEncode(admin.getPassword()));
//			Admin a = adminDao.changepassword(admin);
//			if(a==null)
//				return null;
			Admin sAdmin = (Admin) session.getAttribute("admin");
			if (!(sAdmin.getPassword().equals(admin.getNpassword()))) 
			{
				sAdmin.setPassword(PasswordEncode.passwordEncode(admin.getNpassword()));
				adminDao.updateObject(sAdmin);
				//Mailer.send("maidinindia03@gmail.com", "mii@41926", admin.getEmailId(), "Hello,How r u?", a.getPassword());
				return sAdmin;
			}
		}
		return null;
	}

	


}
