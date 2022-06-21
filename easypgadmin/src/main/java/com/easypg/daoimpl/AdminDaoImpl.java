package com.easypg.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.easypg.dao.AdminDao;
import com.easypg.model.Admin;
import com.easypg.model.User;

@Repository("adminDao")
@SessionAttributes("admin")
public class AdminDaoImpl extends GenericDaoImpl<Admin> implements AdminDao {

	
	@Autowired
	HttpSession session;
	public Admin saveupdateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return super.saveUpdateObject(admin);
	}
	
	public Admin loginCheck(Admin admin) {
		String query = "FROM Admin where email='" + admin.getEmail() + "' and password='" + admin.getPassword() + "'";
		List<Admin> list = super.getByQuery(query);
		if (list.size() == 0) {
			return null;
		}
		return list.get(0);

	}

	public void updatepass(User u) {
		// TODO Auto-generated method stub

	}

	public Admin forgotpassword(Admin admin) {
		Criteria criteria = getSession().createCriteria(Admin.class);
		criteria.add(Restrictions.eq("email", admin.getEmail()));
		Admin us = (Admin) criteria.uniqueResult();
		return us;
	}

	public Admin changepassword(Admin admin) {
		Admin sAdmin = (Admin) session.getAttribute("admin");
		String query = "FROM Admin where email='"+sAdmin.getEmail()+"'";
		List<Admin> list = super.getByQuery(query);
		if(list.size()==0)
			return null;
		return list.get(0);
		
	}

	public int emailCheck(Admin admin) {
		String query = "FROM Admin where email='"+admin.getEmail()+"'";
		List<Admin> list = super.getByQuery(query);
		return list.size();
	}

	public List<Admin> getActive() {
		return (List<Admin>) super.getByQuery("FROM Admin a WHERE a.isDeleted=0");
	}

	public void updatepassword(Admin admin) {
		getSession().saveOrUpdate(admin);
		
	}
}
