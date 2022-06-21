package com.easypg.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.easypg.dao.StateDao;
import com.easypg.model.Admin;
import com.easypg.model.State;


@Repository("stateDao")
public class StateDaoImpl extends GenericDaoImpl<State> implements StateDao{
	
	public List<State> getActive() {
		return (List<State>) super.getByQuery("FROM State s WHERE s.isDeleted=0");
	}
	
}
