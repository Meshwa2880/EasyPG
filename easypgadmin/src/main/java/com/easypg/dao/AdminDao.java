package com.easypg.dao;

import java.util.List;


import com.easypg.model.Admin;
import com.easypg.model.User;

public interface AdminDao extends GenericDAO<Admin> {

	public Admin loginCheck(Admin admin);
	
	int emailCheck(Admin admin);
	
	public List<Admin> getActive();
	
	public Admin saveupdateAdmin(Admin admin);

	public void updatepass(User u);
	
	void updatepassword(Admin admin);

	Admin changepassword(Admin admin);

	Admin forgotpassword(Admin admin);
}
