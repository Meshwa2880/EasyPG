package com.easypg.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.AreaDao;
import com.easypg.dao.CityDao;
import com.easypg.model.Admin;
import com.easypg.model.Area;
import com.easypg.model.City;
import com.easypg.service.AreaService;

@Service("areaService")
@Transactional
@SessionAttributes("admin")
public class AreaServiceImpl implements AreaService{

	@Autowired
	AreaDao areaDao;

	@Autowired
	HttpSession session;


	public Area updateArea(Area area) {
		Admin ad = (Admin) session.getAttribute("admin");
		area.setModifiedBy(ad.getAdminId());
		area.setModifiedDate(new Date(System.currentTimeMillis()));
		return areaDao.updateObject(area);
	}


	public List<Area> getAll() {
		return areaDao.getActive();
	}


	public Area addArea(Area area) {
		Admin ad = (Admin) session.getAttribute("admin");
		area.setCreatedBy(ad.getAdminId());
		area.setCreatedDate(new Date(System.currentTimeMillis()));
		area.setModifiedBy(ad.getAdminId());
		area.setModifiedDate(new Date(System.currentTimeMillis()));
		return areaDao.saveObject(area);
	}


	public Area getById(int id) {
		return areaDao.getFullObjById(id);//(areaDao.getActive()).get(0);
	}


	public Area deleteArea(int id) {
		Area area = areaDao.getById(Area.class, id);
		area.setIsDeleted(1);
		return areaDao.updateObject(area);
	}

	
	public List<Area> getAllAreasByCityId(int city_id) {
		return areaDao.getAllAreasByCityId(city_id);
	}
	
}
