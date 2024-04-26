package com.Manage.rm;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.Manage.domain.flight;

public class flightRowMapper implements RowMapper<flight> {

	@Override
	public flight mapRow(ResultSet rs, int rowNum) throws SQLException {
		flight f=new flight();
		f.setUserId(rs.getInt("userId"));
		f.setTime(rs.getString("time"));
		f.setDestination(rs.getString("destination"));
		f.setFlightId(rs.getInt("flightId"));
		f.setFlightSeat(rs.getInt("flightSeat"));
		f.setFlightStatus(rs.getInt("flightStatus"));
		f.setFlightType(rs.getInt("flightType"));
		f.setFlightClass(rs.getString("remark"));
		f.setTraveler(rs.getInt("traveler"));
		return f;
	}

}
