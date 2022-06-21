package com.easypguser.service;

import java.util.List;

import com.easypguser.model.Review;

public interface ReviewService {

	long addreview(Review review);

	List<Review> getReviewsByPropertyid(long propertyId);

}
