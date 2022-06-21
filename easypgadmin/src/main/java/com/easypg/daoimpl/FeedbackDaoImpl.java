package com.easypg.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.easypg.dao.FeedbackDao;
import com.easypg.model.Feedback;
import com.easypg.util.Mailer;

@Repository("feedbackDao")
public class FeedbackDaoImpl extends GenericDaoImpl<Feedback> implements FeedbackDao{

	public List<Feedback> getAll() {
		// TODO Auto-generated method stub
		return super.getByQuery("FROM Feedback f WHERE f.isDeleted=0");
	}

	public boolean deleteFeedback(long id) {
		Feedback obj = super.getById(Feedback.class,id);
		obj.setIsDeleted(1);
		return super.updateObject(obj).getFeedbackId()>0;
	}

	public Feedback getById(long id) {
		// TODO Auto-generated method stub
		return super.getById(Feedback.class, id);
	}

	public int sendReply(Feedback feedback) {
		// TODO Auto-generated method stub
		String reply = feedback.getReply();
		Mailer.send("easypg123@gmail.com", "easypgmtv@123", feedback.getEmail(),"Reply to your feedback ", reply);
		return 0;
	}

	
}
