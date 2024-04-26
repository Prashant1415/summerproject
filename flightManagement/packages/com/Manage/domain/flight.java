package com.Manage.domain;

public class flight {
	private Integer flightId;
	private Integer userId;
	private Integer flightStatus;
	private String FlightClass;
	private String time;
	private String destination;
	private Integer flightType;
	private Integer flightSeat;
	private Integer Traveler;
	
	public Integer getTraveler() {
		return Traveler;
	}
	public void setTraveler(Integer traveler) {
		Traveler = traveler;
	}
	public Integer getFlightSeat() {
		return flightSeat;
	}
	public void setFlightSeat(Integer flightSeat) {
		this.flightSeat = flightSeat;
	}
	public Integer getFlightId() {
		return flightId;
	}
	public void setFlightId(Integer flightId) {
		this.flightId = flightId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getFlightStatus() {
		return flightStatus;
	}
	public void setFlightStatus(Integer flightStatus) {
		this.flightStatus = flightStatus;
	
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Integer getFlightType() {
		return flightType;
	}
	public void setFlightType(Integer flightType) {
		this.flightType = flightType;
	}
	public String getFlightClass() {
		return FlightClass;
	}
	public void setFlightClass(String flightClass) {
		FlightClass = flightClass;
	}


}