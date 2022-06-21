package com.easypg.dao;

import java.util.List;


import com.easypg.model.User;
import com.easypg.model.User;

public interface UserDao extends GenericDAO<User> {

	public User loginCheck(User user);
	
	int emailCheck(User user);
	
	public List<User> getActive();
	
	public User saveupdateUser(User user);

	public void updatepass(User u);
	
	void updatepassword(User user);

	User changepassword(User user);

	User forgotpassword(User user);

	public List<User> getLandlords();

	public List<User> getTenants();
}
