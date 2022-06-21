package com.easypg.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.ReviewDao;
import com.easypg.model.Admin;
import com.easypg.model.Review;
import com.easypg.util.DbUtility;

@Repository("reviewDao")
@SessionAttributes("user")

public class ReviewDaoImpl extends GenericDaoImpl<Review> implements ReviewDao {

	@Autowired
	HttpSession session;

	public Review saveupdateReview(Review review) {
		// TODO Auto-generated method stub
		return super.saveUpdateObject(review);
	}

	public List<Review> getActive() {
		List<Review> list = DbUtility.getListData("SELECT r.reviewId as reviewId,r.userId as userId ,r.propertyId as propertyId,r.reviewDesc as reviewDesc,r.reviewDate as reviewDate FROM review r WHERE r.isDeleted = 0",Review.class);
		return list;
	}

}
