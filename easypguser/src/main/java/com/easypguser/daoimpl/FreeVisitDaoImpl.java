package com.easypguser.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.dao.FreeVisitDao;
import com.easypguser.model.FreeVisit;
import com.easypguser.util.DbUtility;
import com.easypguser.util.Mailer;

@Repository("freevisitDao")
@SessionAttributes("user")

public class FreeVisitDaoImpl  extends GenericDaoImpl<FreeVisit> implements FreeVisitDao  {

	public List<FreeVisit> getAllFreeVisitsByLandlord(long userId) {
				List<FreeVisit> list=DbUtility.getListData("select f.visitId as visitId,f.status as status ,f.pname as pname,f.userId as userId,f.lname as lname,f.tname as tname,f.visitTime as visitTime FROM bookfreevisit f INNER JOIN property p ON p.propertyId=f.propertyId WHERE p.userId="+userId, FreeVisit.class);
			return list;
		}

	public long updateFreeVisitStatus(long userId, String status) {
		FreeVisit freevisit = super.getById(FreeVisit.class, userId);
		freevisit.setStatus(status);
		if(freevisit.getStatus().equals("accept"))
		{
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", freevisit.getTemail(), "Hello,How r u?","your request for freevisit is accepted.");
		}
		if(freevisit.getStatus().equals("decline"))
		{
			Mailer.send("easypg123@gmail.com", "easypgmtv@123", freevisit.getTemail(), "Hello,How r u?","your request for freevisit is declined.");
		}
		return super.updateObject(freevisit).getVisitId();
		
	}
	}

