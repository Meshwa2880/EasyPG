package com.easypguser.serviceimpl;

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

import com.easypguser.model.Area;
import com.easypguser.model.Property;
import com.easypguser.model.User;
import com.easypguser.util.FTPUtils;
import com.easypguser.dao.AreaDao;
import com.easypguser.dao.PropertyDao;
import com.easypguser.dao.UserDao;
import com.easypguser.service.PropertyService;
import com.easypguser.util.FileUtils;
import com.easypguser.util.Mailer;
import com.easypguser.util.PasswordEncode;
import com.easypguser.util.RandomString;

@Service("propertyservice")
@Transactional
@SessionAttributes("user")
public class PropertyServiceImpl implements PropertyService {

	@Autowired
	PropertyDao propertyDao;

	@Autowired
	HttpSession session;

	@Autowired
	AreaDao areadao;

	@Autowired
	UserDao userDao;

	// @Autowired
	// private ServletContext context;
	// String absolutePath1 = "";
	
	private static String UPLOADED_FOLDER1 = "C://Program Files//Apache Software Foundation//Tomcat 9.0//webapps//easypguser//resources//images//propertyPicture"+File.separator;
	
	private static String UPLOADED_FOLDER2 = "C://Program Files//Apache Software Foundation//Tomcat 9.0//webapps//easypguser//resources//images//profilePicture"+File.separator;
	
	public long addProperty(Property property, MultipartFile[] files) {
		StringBuffer filesName = new StringBuffer("");
		for (MultipartFile file : files) {
			String newPP = FileUtils.getFileName(file.getOriginalFilename());
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1 + newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1 + newPP, newPP);
			filesName.append(newPP).append("|");

		}
		if (!"".equals(filesName)) {
			filesName.deleteCharAt(filesName.length() - 1);
		}
		property.setPropertyPicture(filesName.toString());

		User ad = (User) session.getAttribute("user");
		property.setUserId(ad.getUserId());
		property.setIsActive(1);
		// property.setCreatedBy(ad.getPropertyId());
		property.setCreatedDate(new Date(System.currentTimeMillis())); //
		// property.setModifiedBy(ad.getPropertyId());
		property.setModifiedDate(new Date(System.currentTimeMillis()));

		long p = propertyDao.addProperty(property);

		return p;
	}

	
	public int deleteProperty(long id) {
		Property property = propertyDao.getById(Property.class, id);
		if (property != null) {
			property.setIsDeleted(1);
			propertyDao.updateObject(property);
		}
		return 0;
	}

	public long updateProperty(Property property, MultipartFile[] files) {
		Property oldad = propertyDao.getById(Property.class, property.getPropertyId());
		User ad = (User) session.getAttribute("user");
		property.setCreatedDate(oldad.getCreatedDate());
		property.setModifiedDate(new Date(System.currentTimeMillis()));
		StringBuffer filesName = new StringBuffer("");
		for (MultipartFile file : files) {
			String newPP = FileUtils.getFileName(file.getOriginalFilename());
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1 + newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1 + newPP, newPP);
			filesName.append(newPP).append("|");

		}
		if (!"".equals(filesName)) {
			filesName.deleteCharAt(filesName.length() - 1);
		}
		property.setPropertyPicture(filesName.toString());

		Property p1=propertyDao.updateObject(property);

		return p1.getPropertyId();
	}

	public List<Property> getAll() {

		List<Property> propertyList = propertyDao.getActive();

		for (Property p : propertyList) {

			String[] newPP = p.getPropertyPicture().split("\\|");
			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP[0]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP[0], UPLOADED_FOLDER1 + newPP[0]);
			}
		}

		return propertyList;

	}

	public Property getById(long id) {
		Property property = propertyDao.getById(Property.class, id);
		String newPP = property.getPropertyPicture();

		File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP);

		if (!PropertyPicture.exists()) {
			FTPUtils.download(newPP, UPLOADED_FOLDER1 + newPP);

		}

		return property;
	}

	public long saveupdateProperty(Property property, MultipartFile file) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Property> getAllPropertiesByUserId() {
		User ad = (User) session.getAttribute("user");
		return propertyDao.getPropertiesByUserId(ad.getUserId());
	}

	public Property getAllDetails(long id) {
		Property p = propertyDao.getById(Property.class, id);

		User u = userDao.getById(User.class, p.getUserId());
		p.setLname(u.getFname() + " " + u.getLname());
		p.setLemail(u.getEmail());
		p.setMno(u.getMobileNo());
		
		String newPP1 = u.getProfilePicture();
		File ProfileImage = new File(UPLOADED_FOLDER2+newPP1);
		if(!ProfileImage.exists())
		{
			FTPUtils.download(newPP1, UPLOADED_FOLDER2+newPP1);
		}
		p.setUserProfilePicture(u.getProfilePicture());
	
		

		String newPP = p.getPropertyPicture();
		String parray[] = newPP.split("\\|");
		for (int i = 0; i < parray.length; i++) {
			File PropertyPicture = new File(UPLOADED_FOLDER1 + parray[i]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(parray[i], UPLOADED_FOLDER1 + parray[i]);
			}
		}

		Area a = areadao.getAllDetails(p.getAreaId());
		p.setStateId(a.getStateId());
		p.setSname(a.getSname());
		p.setCity_id(a.getCity_id());
		p.setCname(a.getCname());
		p.setAname(a.getName());
		// }

		return p;
	}

	public List<Property> getAllRooms() {
		List<Property> propertyList = propertyDao.getRooms();
		
		for (Property p : propertyList) {

			String[] newPP = p.getPropertyPicture().split("\\|");

			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP[0]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP[0], UPLOADED_FOLDER1 + newPP[0]);
			}
		}

		return propertyList;

	}

	public List<Property> getAllBeds() {
		List<Property> propertyList = propertyDao.getBeds();

		for (Property p : propertyList) {

			String[] newPP = p.getPropertyPicture().split("\\|");

			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP[0]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP[0], UPLOADED_FOLDER1 + newPP[0]);
			}
		}

		return propertyList;

	}

	public List<Property> getAllApartments() {
		List<Property> propertyList = propertyDao.getApartments();

		for (Property p : propertyList) {

			String[] newPP = p.getPropertyPicture().split("\\|");

			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP[0]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP[0], UPLOADED_FOLDER1 + newPP[0]);
			}
		}

		return propertyList;

	}

	public List<Property> getAllPropertiesByArea() {
		List<Property> propertyList = propertyDao.getAllPropertiesByArea();

		for (Property p : propertyList) {

			String newPP = p.getPropertyPicture();
			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP, UPLOADED_FOLDER1 + newPP);
			}
		}

		return propertyList;
	}

	public List<Property> getpropertyFilter(Property property) {
		List<Property> propertyList = propertyDao.getpropertyFilter(property);

		for (Property p : propertyList) {

			String[] newPP = p.getPropertyPicture().split("\\|");

			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP[0]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP[0], UPLOADED_FOLDER1 + newPP[0]);
			}
		}

		return propertyList;

	}

	public List<Property> getrecent() {
		List<Property> propertyList = propertyDao.getrecent();

		for (Property p : propertyList) {

			String[] newPP = p.getPropertyPicture().split("\\|");
			File PropertyPicture = new File(UPLOADED_FOLDER1 + newPP[0]);

			if (!PropertyPicture.exists()) {
				FTPUtils.download(newPP[0], UPLOADED_FOLDER1 + newPP[0]);
			}
		}

		return propertyList;
	}
	


}
