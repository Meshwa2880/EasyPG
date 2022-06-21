package com.easypg.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.easypg.model.User;

public interface UserService {
	public long addUser(User user, MultipartFile file);
	public User editUser(int id);
	public int deleteUser(int id);
	public List<User> getAll();
	public int updateUser(User user, MultipartFile file);
	//public void changePassword(String oldpassword, String npassword, String cpassword);
	public long saveupdateUser(User user, MultipartFile file);
	public User getById(long l);
	public List<User> getAllLandlords();
	public List<User> getAllTenants();
	public User getAllDetails(long id);
	
}
