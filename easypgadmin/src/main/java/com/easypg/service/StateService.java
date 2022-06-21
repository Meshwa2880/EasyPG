package com.easypg.service;

import java.util.List;

import com.easypg.model.State;

public interface StateService {
	public State updateState(State state);
	public List<State> getAll();
	State addState(State state);
	State getById(int id);
	State deleteState(int id);
}
