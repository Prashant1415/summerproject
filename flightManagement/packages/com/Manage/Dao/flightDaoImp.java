package com.Manage.Dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.Manage.domain.flight;

@Repository
public class flightDaoImp  extends BaseDao implements flightDao{

	@Override
	public void save(flight f) {
		String sql="INSERT INTO flight_table (userId,destination,flightSeat,flightStatus,flightType,remark,time,traveler)" + 
	" VALUES (:userId,:destination,:flightSeat,:flightStatus,:flightType,:remark,:time,:traveler)";
		Map m=new HashMap();
		m.put("flightSeat", f.getFlightSeat());
		m.put("flightStatus", f.getFlightStatus());
		m.put("remark", f.getFlightClass());
		m.put("destination", f.getDestination());
		m.put("time", f.getTime());
		m.put("flightType", f.getFlightType());
		m.put("traveler",f.getTraveler());
		m.put("userId", f.getUserId());
		
		KeyHolder kh =new GeneratedKeyHolder();
		SqlParameterSource ps= new MapSqlParameterSource(m);
		super.getNamedParameterJdbcTemplate().update(sql, ps,kh);
		Integer flightId=kh.getKey().intValue();
		f.setFlightId(flightId);
		}

	@Override
	public void update(flight f) {
		// TODO Auto-generated method stub
		String sql="UPDATE flight_table"
				+" "
				+"SET destination=:destination,"
				+"flightSeat=:flightSeat,"
				+"flightStatus=:flightStatus,"
				+"flightType=:flightType,"
				+"remark=:remark,"
				+"time=:time,"
				+"traveler=:traveler"
				+
				" "
				+"WHERE flightID=:flightId";
		
		Map m= new HashMap();
		m.put("flightId", f.getFlightId());
		m.put("destination",f.getDestination());
		m.put("flightSeat", f.getFlightSeat());
		m.put("flightStatus", f.getFlightStatus());
		m.put("flightType", f.getFlightType());
		m.put("time", f.getTime());
		m.put("remark", f.getFlightClass());
		m.put("traveler",f.getTraveler());
		getNamedParameterJdbcTemplate().update(sql, m);

			

	}
	
	@Override
	public void delete(flight f) {
		// TODO Auto-generated method stub
		this.delete(f.getFlightId());
		
	}

	@Override
	public void delete(Integer flightId) {
		String sql="DELETE FROM flight_TABLE WHERE flightId=?";
		getJdbcTemplate().update(sql,flightId);

	}

	@Override
	public flight findById(Integer flightId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<flight> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<flight> findByProperty(String propName, Object propvalue) {
		// TODO Auto-generated method stub
		return null;
	}

}
