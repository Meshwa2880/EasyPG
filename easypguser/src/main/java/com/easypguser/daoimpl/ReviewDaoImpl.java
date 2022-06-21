package com.easypguser.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypguser.dao.ReviewDao;
import com.easypguser.model.Review;
import com.easypguser.util.DbUtility;

@Repository("reviewDao")
@SessionAttributes("user")

public class ReviewDaoImpl extends GenericDaoImpl<Review> implements ReviewDao{
	@Autowired
	HttpSession session;

	public List<Review> getReviewsByPropertyid(long propertyId) {
		List<Review> list = DbUtility.getListData(
				"SELECT r.reviewId as reviewId,r.userId as userId ,r.propertyId as propertyId,r.reviewDesc as reviewDesc,r.reviewDate as reviewDate FROM review r WHERE r.isDeleted = 0 AND r.propertyId ="
						+ propertyId,
				Review.class);
		return list;		}

}
