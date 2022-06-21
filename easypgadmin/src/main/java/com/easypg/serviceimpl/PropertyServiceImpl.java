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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.easypg.model.Area;
import com.easypg.model.Property;
import com.easypg.model.User;
import com.easypg.util.FTPUtils;
import com.easypg.dao.PropertyDao;
import com.easypg.dao.UserDao;
import com.easypg.service.PropertyService;
import com.easypg.util.FileUtils;
import com.easypg.util.Mailer;
import com.easypg.util.PasswordEncode;
import com.easypg.util.RandomString;

@Service("propertyservice")
@Transactional
@SessionAttributes("user")
public class PropertyServiceImpl implements PropertyService {

	@Autowired
	PropertyDao propertyDao;

	@Autowired
	HttpSession session;
	
	@Autowired
	UserDao userdao;

	// @Autowired
	// private ServletContext context;
	  String absolutePath1 = "";
	  
	  private static String UPLOADED_FOLDER1 = "C://Program Files//Apache Software Foundation//Tomcat 9.0//webapps//easypguser//resources//images//propertyPicture" +File.separator;
	 

	

	
	  public long addProperty(Property property, MultipartFile file) {
	 String newPP=FileUtils.getFileName(file.getOriginalFilename());
	  property.setPropertyPicture(newPP);
	  property.setPropertyImage(file); 
	 
	//  Property ad=(Property)session.getAttribute("property");
	  User ad=(User)session.getAttribute("user");
	  property.setUserId(ad.getUserId());
	  property.setIsActive(1);
	  //property.setCreatedBy(ad.getPropertyId());
	  property.setCreatedDate(new Date(System.currentTimeMillis())); //
	  //property.setModifiedBy(ad.getPropertyId());
	  property.setModifiedDate(new Date(System.currentTimeMillis()));
	  
	  Property p=propertyDao.saveObject(property);
	  if(p!=null) {
		  FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newPP);
		  FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP); }
	  
	  return 0;
	  }
	  public Property editProperty(long id) {
		//propertyDao.updateObject(property);

		return null;
	}

	public int deleteProperty(long id)
	{
		Property property = propertyDao.getById(Property.class, id);
		if (property != null) {
			property.setIsDeleted(1);
			propertyDao.updateObject(property);
		}
		return 0;
		}


	

	
	  public int updateProperty(Property property, MultipartFile file) {
	  Property oldad=propertyDao.getById(Property.class,property.getPropertyId());
	//  User ad = (User) session.getAttribute("user");
	  property.setModifiedDate(new Date(System.currentTimeMillis()));
	  if(!oldad.getPropertyPicture().equals(file.getOriginalFilename()))
	  { 
		  String  newPP = FileUtils.getFileName(file.getOriginalFilename());
	  FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newPP);
	  FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
	  property.setPropertyPicture(newPP);
	  } 
	  propertyDao.updateObject(property);
	  
	  return 0;
	  }
	  
	  public List<Property> getAll() {
			
			List<Property> propertyList = propertyDao.getActive();
			
			for(Property p : propertyList)
			{
				String newPP = p.getPropertyPicture();
				File PropertyImage = new File(UPLOADED_FOLDER1+newPP);
				
				if(!PropertyImage.exists())
				{
					//FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
					
				}
			}
				return  propertyList;
			

		}

	  
	  
	  public Property getById(long id) { 
		  Property property = propertyDao.getById(Property.class, id); 
		  String newPP = property.getPropertyPicture();
	  
	  File PropertyImage = new File(UPLOADED_FOLDER1+newPP);
	  
	  
	  
	  if(!PropertyImage.exists()) { 
		  FTPUtils.download(newPP,UPLOADED_FOLDER1+newPP);
	  
	  }
	  
	  return property;
	  }
	public long saveupdateProperty(Property property, MultipartFile file) {
		// TODO Auto-generated method stub
		return 0;
	}
	public List<Property> getPropertiesByUserId(long userId) {
		return propertyDao.getPropertiesByUserId(userId);
	}
	
	  }
	 
	  
	  
	  
	  
	 
