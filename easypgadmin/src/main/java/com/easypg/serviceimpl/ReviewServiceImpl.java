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
import com.easypg.model.Review;
import com.easypg.model.User;
import com.easypg.util.FTPUtils;
import com.easypg.dao.PropertyDao;
import com.easypg.dao.ReviewDao;
import com.easypg.dao.UserDao;
import com.easypg.service.ReviewService;
import com.easypg.util.FileUtils;
import com.easypg.util.Mailer;
import com.easypg.util.PasswordEncode;
import com.easypg.util.RandomString;

@Service("reviewservice")
@Transactional
@SessionAttributes("user")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDao reviewDao;

	@Autowired
	HttpSession session;

	@Autowired
	UserDao userdao;
	
	@Autowired
	PropertyDao propertydao;

	// @Autowired
	// private ServletContext context;
	public List<Review> getAll() {
		List<Review> reviewList = reviewDao.getActive();

		for (Review review : reviewList) {
		User user = userdao.getById(User.class, review.getUserId());
		review.setUserName(user.getFname()+" "+user.getLname());
		Property p=propertydao.getById(Property.class,review.getPropertyId());
		review.setTitle(p.getTitle());
		}
		//List<Review> reviewList = reviewDao.getActive();

		return reviewList;

	}

}
