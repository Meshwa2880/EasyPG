package com.easypg.dao;

import java.util.List;

import com.easypg.model.Area;
import com.easypg.model.Review;
import com.easypg.model.Review;

public interface ReviewDao extends GenericDAO<Review> {
	public List<Review> getActive();

}