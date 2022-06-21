package com.easypg.service;

import com.easypg.model.Admin;

public interface LoginService {
	public Admin login(Admin admin);

	public Admin forgotPassword(Admin admin);

	public Admin changePass(Admin admin);
	
}
