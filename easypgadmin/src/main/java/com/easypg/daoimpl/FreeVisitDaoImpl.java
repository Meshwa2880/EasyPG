package com.easypg.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.FreeVisitDao;
import com.easypg.model.Admin;
import com.easypg.model.FreeVisit;
import com.easypg.util.DbUtility;

@Repository("freevisitDao")
@SessionAttributes("user")

public class FreeVisitDaoImpl extends GenericDaoImpl<FreeVisit> implements FreeVisitDao {

	@Autowired
	HttpSession session;
	public FreeVisit saveupdateFreeVisit(FreeVisit freevisit) {
		// TODO Auto-generated method stub
		return super.saveUpdateObject(freevisit);
	}
	public List<FreeVisit> getActive() {
		return (List<FreeVisit>) super.getByQuery("FROM FreeVisit f");
		
	}
	
}
