package com.entities;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="registered")
public class web {
	
	private String firstname;
	private String lastname;
	@Id
	private String username;
	private long phone;
	private String date;
	private String gender;
	private String city;
	private String state;
	private String address;
	private String pass1;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	public web(String firstname, String lastname, String username, long phone, String date, String gender, String city,
			String state, String address, String pass1) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.phone = phone;
		this.date = date;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.address = address;
		this.pass1 = pass1;
	}
	public web() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
