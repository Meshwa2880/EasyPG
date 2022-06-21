package com.easypguser.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.easypguser.dao.CityDao;
import com.easypguser.model.City;
import com.easypguser.util.DbUtility;


@Repository("citydao")
public class CityDaoImpl extends GenericDaoImpl<City>  implements CityDao {

	
	public List<City> getAll() {

		List<City> list = DbUtility.getListData("SELECT c.city_id as city_id, c.city_name as name,c.stateId as stateId FROM city_info c INNER JOIN state s ON c.stateId = s.stateId WHERE c.isDeleted=0 and s.isDeleted=0", City.class);
		return list;
		//return super.getByQuery("FROM City vm WHERE vm.isDeleted=0");
	}

	public City getById(long id) {
		// TODO Auto-generated method stub
		return super.getById(City.class, id);
	}

	public boolean deleteCity(long id) {
		City obj = super.getById(City.class,id);
		obj.setIsDeleted(1);
		return super.updateObject(obj).getCity_id()>0;
	}

	public long addCity(City city) {
		city.setIsActive(1);
		city.setIsDeleted(0);
		City new_obj =super.saveUpdateObject(city);
		return new_obj.getCity_id();
	}

	public City editCity(long id) {
		// TODO Auto-generated method stub
		return super.getById(City.class, id);
	}

	public List<City> getAllCitiesByStateId(long stateId) {
		//String query = "SELECT * FROM city c WHERE c.isDeleted = 0 AND c.stateId ="+stateId; 
		List<City> list=DbUtility.getListData("SELECT c.city_id as city_id,c.city_name as name FROM city_info c WHERE c.isDeleted = 0 AND c.stateId ="+stateId, City.class);
		return list;
	}

}
