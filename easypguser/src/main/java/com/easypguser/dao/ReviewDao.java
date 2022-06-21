package com.easypguser.dao;

import java.util.List;

import com.easypguser.model.Review;

public interface ReviewDao extends GenericDAO<Review>{

	List<Review> getReviewsByPropertyid(long userId);

}
