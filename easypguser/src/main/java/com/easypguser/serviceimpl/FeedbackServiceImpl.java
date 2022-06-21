package com.easypguser.serviceimpl;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easypguser.dao.FeedbackDao;

import com.easypguser.model.Feedback;
import com.easypguser.service.FeedbackService;

@Service("feedbackservice")
@Transactional
public class FeedbackServiceImpl implements FeedbackService {
	
	@Autowired
	FeedbackDao feedbackdao;

	public long addFeedback(Feedback feedback) {
		
		feedbackdao.addFeedback(feedback);
		return 0;
	}
	

}