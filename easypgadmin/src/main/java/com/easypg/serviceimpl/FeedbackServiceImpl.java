package com.easypg.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easypg.dao.FeedbackDao;
import com.easypg.model.Feedback;
import com.easypg.service.FeedbackService;

@Service("feedbackservice")
@Transactional
public class FeedbackServiceImpl implements FeedbackService {

	@Autowired
	FeedbackDao feedbackdao;

	public List<Feedback> getAll() {
		// TODO Auto-generated method stub
		return feedbackdao.getAll();
	}

	public boolean deleteFeedback(long id) {
		// TODO Auto-generated method stub
		return feedbackdao.deleteFeedback(id);
	}

	public Feedback getFeedback(long id) {
		// TODO Auto-generated method stub
		return feedbackdao.getById(id);
	}

	public int sendReply(Feedback feedback) {
		// TODO Auto-generated method stub
		return feedbackdao.sendReply(feedback);
	}
	
	
}
