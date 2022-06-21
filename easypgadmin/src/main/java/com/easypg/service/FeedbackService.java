package com.easypg.service;

import java.util.List;

import com.easypg.model.Feedback;

public interface FeedbackService {

	public List<Feedback> getAll();

	public boolean deleteFeedback(long id);

	public Feedback getFeedback(long id);

	public int sendReply(Feedback feedback);

}
