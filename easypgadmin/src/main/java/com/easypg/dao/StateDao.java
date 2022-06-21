package com.easypg.dao;

import java.util.List;

import com.easypg.model.State;

public interface StateDao extends GenericDAO<State>{

	List<State> getActive();

}
