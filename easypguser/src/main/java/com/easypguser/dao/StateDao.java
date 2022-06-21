package com.easypguser.dao;

import java.util.List;

import com.easypguser.model.State;

public interface StateDao extends GenericDAO<State>{

	public List<State> getAll();
	public State getById(long id);
	public boolean deleteState(long id);
	public long addState(State state);

}
