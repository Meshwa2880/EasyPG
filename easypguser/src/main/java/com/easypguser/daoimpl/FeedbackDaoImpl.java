package com.easypguser.daoimpl;



import java.sql.Date;

import org.springframework.stereotype.Repository;

import com.easypguser.dao.FeedbackDao;
import com.easypguser.model.Feedback;

@Repository("feedbackdao")
public class FeedbackDaoImpl extends GenericDaoImpl<Feedback>  implements FeedbackDao{

	
	public long addFeedback(Feedback feedback) {
		 	
			feedback.setIsDeleted(0);
			feedback.setFeedbackDate(new Date(System.currentTimeMillis()));
			Feedback new_obj =super.saveObject(feedback);
			return new_obj.getFeedbackId();
			
			
		}
}