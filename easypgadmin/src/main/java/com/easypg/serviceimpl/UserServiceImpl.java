package com.easypg.serviceimpl;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.easypg.model.Area;
import com.easypg.model.User;

import com.easypg.util.FTPUtils;
import com.easypg.dao.AreaDao;
import com.easypg.dao.UserDao;
import com.easypg.service.UserService;
import com.easypg.util.FileUtils;
import com.easypg.util.Mailer;
import com.easypg.util.PasswordEncode;
import com.easypg.util.RandomString;


@Service("userservice")
@Transactional
@SessionAttributes("user")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	AreaDao areadao;
	
	

	
	
	//@Autowired
	//private ServletContext context;
    String absolutePath1 = ""; 
    
    private static String UPLOADED_FOLDER1 = "C://Program Files//Apache Software Foundation//Tomcat 9.0//webapps//easypguser//resources//images//profilePicture"+File.separator;
	

	public long addUser(User user, MultipartFile file) {
		
		String newPP=FileUtils.getFileName(file.getOriginalFilename());
		user.setProfilePicture(newPP);
		user.setProfileImage(file);
		User ad=(User)session.getAttribute("user");
		user.setIsActive(1);
		user.setCreatedBy(ad.getUserId());
		user.setCreatedDate(new Date(System.currentTimeMillis()));
		user.setModifiedBy(ad.getUserId());
		user.setModifiedDate(new Date(System.currentTimeMillis()));
		String password = RandomString.getAlphaNumericString(8);
		/*
		 * int result = userDao.emailCheck(user); if(result!=0) { return 1; } if
		 * (user != null) {
		 */
			user.setPassword(PasswordEncode.passwordEncode(password));
		
		User a = userDao.saveObject(user);
		if(a!=null)
		{
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", user.getEmail(), "Hello,How r u?", password);
		}
		if(a!=null) {
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newPP);
		
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
		}
		return 0;
	}

	public User editUser(int id) {
		
		return null;
	}
	

	public int deleteUser(int id) {
		User user= userDao.getById(User.class, id);
		if(user!=null)
		{
			user.setIsDeleted(1);
			userDao.updateObject(user);
		}
		return 0;
	}

	public List<User> getAll() {
		
		List<User> userList = userDao.getActive();
		for(User a : userList)
		{
			String newPP = a.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
				
			}
		}
			return  userList;
		

	}


	public int updateUser(User user, MultipartFile file) {
		//user.setProfilePicture(FileUtils.getFileName(file.getOriginalFilename()));
		//user.setIdProof(FileUtils.getFileName(file2.getOriginalFilename()));
		//user.setPassword(pass);
		User oldad=userDao.getById(User.class,user.getUserId());
		User ad = (User) session.getAttribute("user");
		user.setModifiedBy(ad.getUserId());
		user.setModifiedDate(new Date(System.currentTimeMillis()));
		if(!oldad.getProfilePicture().equals(file.getOriginalFilename()))
		{
			String newPP = FileUtils.getFileName(file.getOriginalFilename());
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
			user.setProfilePicture(newPP);
		}
		userDao.updateObject(user);
		
		return 0;
	}


	public User getById(long id) {
		User user = userDao.getById(User.class, id);
		String newPP = user.getProfilePicture();
	
		File ProfileImage = new File(UPLOADED_FOLDER1+newPP);

		
	    
		if(!ProfileImage.exists())
		{
			FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
		
		}
		
		return user;
	}


	public List<User> getAllLandlords() {
		
		List<User> userList = userDao.getLandlords();
		for(User a : userList)
		{
			String newPP = a.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
				
			}
		}
			return  userList;
	}


	public List<User> getAllTenants() {
		List<User> userList = userDao.getTenants();
		for(User a : userList)
		{
			String newPP = a.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
				
			}
		}
			return  userList;
	}
	public User getAllDetails(long userId) {
		User u = userDao.getById(User.class, userId);
		String newPP = u.getProfilePicture();

		File ProfileImage = new File(UPLOADED_FOLDER1 + newPP);
		if (!ProfileImage.exists()) {
			FTPUtils.download(newPP, UPLOADED_FOLDER1 + newPP);

		}
		Area a = areadao.getAllDetails(u.getAreaId());
		u.setStateId(a.getStateId());
		u.setStateName(a.getSname());
		u.setCity_id(a.getCity_id());
		u.setCity_name(a.getCname());
		u.setAreaName(a.getName());
		return u;
	}

	public long saveupdateUser(User user, MultipartFile file) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	

	}



	

	/*public void changePassword(String oldpassword, String npassword, String cpassword) {
	
		
	}*/

