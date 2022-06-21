package com.easypguser.dao;

import java.util.List;


import com.easypguser.model.User;
import com.easypguser.model.User;

public interface UserDao extends GenericDAO<User> {
	User loginCheck(User user);

	int emailCheck(User user);

	User forgotpassword(User user);


	/*
	 * public User loginCheck(User user);
	 * 
	 * int emailCheck(User user);
	 * 
	 * public List<User> getActive();
	 * 
	 * public User saveupdateUser(User user);
	 * 
	 * public void updatepass(User u);
	 * 
	 * void updatepassword(User user);
	 * 
	 * User changepassword(User user);
	 * 
	 * User forgotpassword(User user);
	 */}
