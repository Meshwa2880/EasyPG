package com.easypg.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.AdminDao;
import com.easypg.dao.StateDao;
import com.easypg.model.Admin;
import com.easypg.model.State;
import com.easypg.service.StateService;


@Service("stateService")
@Transactional
@SessionAttributes("admin")
public class StateServiceImpl implements StateService {

	@Autowired
	StateDao stateDao;

	@Autowired
	HttpSession session;
	
	
	public State addState(State state) {
		Admin ad = (Admin) session.getAttribute("admin");
		state.setCreatedBy(ad.getAdminId());
		state.setCreatedDate(new Date(System.currentTimeMillis()));
		state.setModifiedBy(ad.getAdminId());
		state.setModifiedDate(new Date(System.currentTimeMillis()));
		return stateDao.saveObject(state);
	}
	public State getById(int id) {
		State state = stateDao.getById(State.class, id);
		return state;
	}

	
	public State updateState(State state) {
		Admin ad = (Admin) session.getAttribute("admin");
		state.setModifiedBy(ad.getAdminId());
		state.setModifiedDate(new Date(System.currentTimeMillis()));
		return stateDao.updateObject(state);
	}


	public List<State> getAll() {
		return stateDao.getActive();
	}
	
	public State deleteState(int id)
	{
		State state = stateDao.getById(State.class, id);
		state.setIsDeleted(1);
		return stateDao.updateObject(state);
	}
}
