package com.easypg.daoimpl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.easypg.dao.CityDao;
import com.easypg.dao.StateDao;
import com.easypg.model.City;
import com.easypg.model.State;
import com.easypg.util.DbUtility;

@Repository("cityDao")
public class CityDaoImpl  extends GenericDaoImpl<City> implements CityDao{

	
	public List<City> getActive() {
		
		String query="select c.city_id as city_id,c.city_name as name,s.stateName as sname,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM city_info c inner join "
				+ "state s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 ";
		return DbUtility.getListData(query, City.class);
	}

	
	public List<City> getAllCitiesByStateId(int stateId) {
		String query="select c.city_id as city_id,c.city_name as name,s.stateName as sname,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM city_info c inner join "
				+ "state s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 "
				+ "AND c.stateId ="+stateId;
		List<City> list = DbUtility.getListData(query, City.class);
		//return DbUtility.getListData(query, City.class);
		return list;
	}


	public List<City> getAllCitiesByStateId(long stateId) {
		String query="select c.city_id as city_id,c.city_name as name,s.stateName as sname,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM city_info c inner join "
				+ "state s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 "
				+ "AND c.stateId ="+stateId;
		List<City> list = DbUtility.getListData(query, City.class);
		//return DbUtility.getListData(query, City.class);
		return list;
	}
}
