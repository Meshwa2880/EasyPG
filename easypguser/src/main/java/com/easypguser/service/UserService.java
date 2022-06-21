package com.easypguser.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.easypguser.model.User;

public interface UserService {
	/*
	 * public long addUser(User user, Model model); public User editUser(int id);
	 * public int deleteUser(int id); public List<User> getAll(); public int
	 * updateUser(User user, MultipartFile file); //public void
	 * changePassword(String oldpassword, String npassword, String cpassword);
	 * public long saveupdateUser(User user, MultipartFile file); public User
	 * getById(long l);
	 */
	int addUser(User user, MultipartFile file);

	long updateUser(User user,MultipartFile file);

	int deleteUser(long userId);
	public User getAllDetails(long userId);
	

	//int checkOTP(User user);

}
