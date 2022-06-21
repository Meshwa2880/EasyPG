package com.easypguser.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.easypguser.dao.AreaDao;
import com.easypguser.model.Area;
import com.easypguser.model.City;
import com.easypguser.model.Property;
import com.easypguser.util.DbUtility;

@Repository("areadao")
public class AreaDaoImpl extends GenericDaoImpl<Area>  implements AreaDao {

	

	public List<Area> getAll() {

		List<Area> list = DbUtility.getListData("SELECT a.areaId as areaId,"
				+ " a.areaName as name,c.city_name as cname, s.stateName as sname "
				+ "FROM area_info a INNER JOIN city_info c ON a.city_id = c.city_id INNER JOIN state s"
				+ " ON c.stateId = s.stateId  WHERE a.isDeleted=0 and c.isDeleted=0 and "
				+ "s.isDeleted=0", Area.class);
		return list;
		//return super.getByQuery("FROM Area vm WHERE vm.isDeleted=0");
	}

	public List<Area> getAreasByCityId(long city_id) {
		List<Area> list=DbUtility.getListData("SELECT a.areaId as areaId,a.areaName as name FROM area_info a WHERE a.isDeleted = 0 AND a.city_id ="+city_id, Area.class);
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
