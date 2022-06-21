package com.easypg.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.PropertyDao;

import com.easypg.model.Property;
import com.easypg.util.DbUtility;

@Repository("propertyDao")
@SessionAttributes("user")

public class PropertyDaoImpl extends GenericDaoImpl<Property> implements PropertyDao {

	@Autowired
	HttpSession session;
	public Property saveupdateProperty(Property property) {
		// TODO Auto-generated method stub
		return super.saveUpdateObject(property);
	}
	public List<Property> getActive() {
		 List<Property> list= DbUtility.getListData("select p.propertyId as propertyId,p.title as title,p.address as address,p.status as status,p.rent as rent,p.type as type ,u.fname as fname,u.lname as lname FROM property p INNER JOIN user_master u ON p.userId=u.userId WHERE p.isDeleted=0 and u.isDeleted=0",Property.class);
		return list;
	}
	public List<Property> getPropertiesByUserId(long userId) {
		List<Property> list=DbUtility.getListData("SELECT p.userId as userId, FROM property_info p WHERE p.isDeleted = 0 AND p.userId ="+userId, Property.class);
		return list;
	}
	
}
