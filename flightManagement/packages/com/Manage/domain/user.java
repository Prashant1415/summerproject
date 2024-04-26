package com.Manage.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

public class user {
	
	private Integer userId;
	@NotBlank(message="should not be emplty")
	private String name; 
	
	@NotEmpty(message="Phone filed is empty")
	private String phone;
	@NotEmpty(message="Address filed is empty")
	 private String address;
	@NotEmpty(message="Email filed is empty")
	@Email(message="Incorrect Email field")
	private String email;
	@NotEmpty(message="loginName filed is empty")
	private String loginName;
	@NotEmpty(message="password filed is empty")
	private String password;
	private Integer Role;
	private Integer loginStatus;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRole() {
		return Role;
	}
	public void setRole(Integer role) {
		Role = role;
	}
	public Integer getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(Integer loginStatus) {
		this.loginStatus = loginStatus;
	}

}
