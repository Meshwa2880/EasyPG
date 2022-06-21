package com.easypg.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.easypg.dao.CityDao;
import com.easypg.dao.StateDao;
import com.easypg.model.Admin;
import com.easypg.model.City;
import com.easypg.model.State;
import com.easypg.service.CityService;

@Service("cityService")
@Transactional
@SessionAttributes("admin")
public class CityServiceImpl implements CityService {

	@Autowired
	CityDao cityDao;

	@Autowired
	HttpSession session;
	

	
	public City addCity(City city) {
		Admin ad = (Admin) session.getAttribute("admin");
		city.setCreatedBy(ad.getAdminId());
		city.setCreatedDate(new Date(System.currentTimeMillis()));
		city.setModifiedBy(ad.getAdminId());
		city.setModifiedDate(new Date(System.currentTimeMillis()));
		return cityDao.saveObject(city);
	}

	
	public City getById(int id) {
		return cityDao.getById(City.class, id);
	}

	public City updateCity(City city) {
		Admin ad = (Admin) session.getAttribute("admin");
		city.setModifiedBy(ad.getAdminId());
		city.setModifiedDate(new Date(System.currentTimeMillis()));
		return cityDao.updateObject(city);
	}

	
	public List<City> getAll() {
		return cityDao.getActive();
	}
	

	public City deleteCity(int id) {
		City city = cityDao.getById(City.class, id);
		city.setIsDeleted(1);
		return cityDao.updateObject(city);
	}


	public List<City> getAllCitiesByStateId(int stateId) {
		return cityDao.getAllCitiesByStateId(stateId);
	}


	public List<City> getAllCitiesByStateId(long stateId) {
		// TODO Auto-generated method stub
		 return cityDao.getAllCitiesByStateId(stateId);
	}


	
	
}
