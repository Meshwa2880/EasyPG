package com.easypguser.serviceimpl;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.dao.PropertyDao;
import com.easypguser.dao.ReviewDao;
import com.easypguser.dao.UserDao;
import com.easypguser.model.Review;
import com.easypguser.model.User;
import com.easypguser.service.ReviewService;
import com.easypguser.util.FTPUtils;

@Service("reviewservice")
@Transactional
@SessionAttributes("user")

public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDao reviewDao;
	
	@Autowired
	UserDao userDao;


	@Autowired
	HttpSession session;
	
	private static String UPLOADED_FOLDER1 = "C://Program Files//Apache Software Foundation//Tomcat 9.0//webapps//easypguser//resources//images//profilePicture"+File.separator;
	
	
	public long addreview(Review review) {
		User ad = (User) session.getAttribute("user");
		review.setUserId(ad.getUserId());
		
		Review r = reviewDao.saveObject(review);

		if(r!=null)
		{
			return r.getReviewId();
		}
		return 0;

	}


	public List<Review> getReviewsByPropertyid(long propertyId) {
		User ad = (User) session.getAttribute("user");
		List<Review> list=reviewDao.getReviewsByPropertyid(propertyId);
		for (Review review : list) {
			User user = userDao.getById(User.class, review.getUserId());
			review.setUserName(user.getFname()+" "+user.getLname());
			String newPP = user.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
			}
			review.setUserProfilePicture(user.getProfilePicture());
			
		}
		return list;
	}
	
}
	
	


