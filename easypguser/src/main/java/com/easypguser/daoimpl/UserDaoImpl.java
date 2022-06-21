package com.easypguser.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.easypguser.dao.UserDao;
import com.easypguser.model.User;
import com.easypguser.model.User;

@Repository("userDao")
public class UserDaoImpl extends GenericDaoImpl<User> implements UserDao {
	public User loginCheck(User user) {
		String query = "FROM User where email='" + user.getEmail() + "' and password='" + user.getPassword() + "'";
		List<User> list = super.getByQuery(query);
		if (list.size() == 0) {
			return null;
		}
		return list.get(0);

	}


	public User forgotpassword(User user) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("email", user.getEmail()));
		User us = (User) criteria.uniqueResult();
		return us;
	}

		public int emailCheck(User user) {
		String query = "FROM User where email='"+user.getEmail()+"'";
		List<User> list = super.getByQuery(query);
		return list.size();
	}
}
	