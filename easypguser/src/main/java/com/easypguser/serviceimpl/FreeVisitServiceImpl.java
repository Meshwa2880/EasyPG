package com.easypguser.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.util.DateTimeOperation;
import com.easypguser.util.Mailer;
import com.easypguser.dao.FreeVisitDao;
import com.easypguser.dao.PropertyDao;
import com.easypguser.dao.UserDao;
import com.easypguser.model.FreeVisit;
import com.easypguser.model.Property;
import com.easypguser.model.User;
import com.easypguser.service.FreeVisitService;

@Service("freevisitservice")
@Transactional
@SessionAttributes("user")

public class FreeVisitServiceImpl implements FreeVisitService {
	@Autowired
	FreeVisitDao freevisitDao;

	@Autowired
	HttpSession session;
	@Autowired
	UserDao userDao;
	@Autowired
	PropertyDao propertyDao;

	public long addFreeVisit(FreeVisit freevisit) {
		
		
	//freevisit.setVisitDate(new Date(System.currentTimeMillis()));
	freevisit.setVisitTime(DateTimeOperation.changeStrToDate(freevisit.getVisitDate()));
	User ad = (User) session.getAttribute("user");
	freevisit.setUserId(ad.getUserId());
	freevisit.setTname(ad.getFname());
	//User u = userDao.getById(User.class,freevisit.getUserId());
	freevisit.setTemail(ad.getEmail());
	Property p = propertyDao.getById(Property.class, freevisit.getPropertyId());
	freevisit.setPname(p.getTitle());
	User l=userDao.getById(User.class, p.getUserId());
	
	freevisit.setLname(l.getFname());
	freevisit.setLemail(l.getEmail());
	freevisit.setStatus("pending");
	FreeVisit b = freevisitDao.saveObject(freevisit);
	if(freevisit!=null)
	{
		Mailer.send("easypg123@gmail.com", "easypgmtv@123", freevisit.getLemail(), "Hello,How r u?","your property is requested for freevisit please provide your response.");
	}
	return 0;
}

	public List<FreeVisit> getAllFreeVisitsByLandlord() {
			User ad = (User) session.getAttribute("user");
			
			return freevisitDao.getAllFreeVisitsByLandlord(ad.getUserId());
		}
	public long updateFreeVisitStatus(long uid, String status) {
		return freevisitDao.updateFreeVisitStatus(uid, status);
	}
	}



