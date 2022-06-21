package com.easypg.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.easypg.dao.AreaDao;
import com.easypg.model.Area;
import com.easypg.model.City;
import com.easypg.util.DbUtility;

@Repository("areaDao")
public class AreaDaoImpl extends GenericDaoImpl<Area> implements AreaDao {

	
	public List<Area> getActive() {
		List<Area> list = DbUtility.getListData("select a.areaId as areaId,a.areaName as name,c.city_name as cname,"
				+ "s.stateId as stateId,s.stateName as sname,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,a.city_id as city_id "
				+ " FROM city_info c "
				+ "INNER JOIN area_info a ON a.city_id = c.city_id "
				+ "INNER JOIN state s ON c.stateId=s.stateId "
				+ "WHERE c.isDeleted=0 and s.isDeleted=0 and a.isDeleted=0", Area.class);
		return list;
	}

	
	public Area getFullObjById(int id) {
		Area a =(DbUtility.getListData("select a.areaId as areaId,a.areaName as name,c.city_name as cname,"
				+ "s.stateId as stateId,s.stateName as sname,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,a.city_id as city_"
				+ " FROM city_info c "
				+ "INNER JOIN area_info a ON a.city_id = c.city_id "
				+ "INNER JOIN state s ON c.stateId=s.stateId "
				+ "WHERE c.isDeleted=0 and s.isDeleted=0 and a.isDeleted=0"
				+ " and a.areaId ="+id, Area.class)).get(0);
		return a;
	}

	
	public List<Area> getAllAreasByCityId(int city_id) {
		String query="select a.areaId as areaId,a.areaName as name,c.city_name as cname,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,a.city_id as city_id"
				+ " FROM area_info a inner join "
				+ "city_info c ON a.city_id=c.city_id WHERE a.isDeleted=0 and c.isDeleted=0 "
				+ "AND a.city_id ="+city_id;
		List<Area> list = DbUtility.getListData(query, Area.class);
		//return DbUtility.getListData(query, City.class);
		return list;
	}
	public Area getAllDetails(long areaId) {

		List<Area> list = DbUtility.getListData("SELECT a.areaId as areaId,"
				+ " a.areaName as name,c.city_id as city_id,c.city_name as cname,s.stateId as stateId, s.stateName as sname "
				+ "FROM area_info a INNER JOIN city_info c ON a.city_id = c.city_id INNER JOIN state s"
				+ " ON c.stateId = s.stateId  WHERE a.isDeleted=0 and c.isDeleted=0 and "
				+ "s.isDeleted=0 and a.areaId="+areaId, Area.class);
		return list.get(0);
		//return super.getByQuery("FROM Area vm WHERE vm.isDeleted=0");
	}

}
