package com.easypguser.dao;

import org.springframework.stereotype.Repository;

import com.easypguser.model.Feedback;

public interface FeedbackDao extends GenericDAO<Feedback>{
	
	public long addFeedback(Feedback feedback);

}