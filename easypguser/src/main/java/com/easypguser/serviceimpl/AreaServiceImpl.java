package com.easypguser.serviceimpl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easypguser.dao.AreaDao;
import com.easypguser.model.Area;
import com.easypguser.service.AreaService;

@Service("areaservice")
@Transactional

public class AreaServiceImpl implements AreaService {

	@Autowired
	AreaDao areadao;
	
	

	public List<Area> getAll() {
		return areadao.getAll();
	}



	public List<Area> getAllAreasByCityId(long cityId) {
		return areadao.getAreasByCityId(cityId);
	}

	
}
