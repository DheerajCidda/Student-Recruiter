package com.amzi.dao;

public class User {
	 String firstName, lastName,  birthDate, gender, email, telephone, street, city, state, zip, majorId, department1, department2, department3, athletic1, athletic2,noSession, campusTour, lunch, studentAid;

	public User(String firstName, String lastName, String birthDate, String gender, String email, String telephone,
			String street, String city, String state, String zip, String majorId, String department1,
			String department2, String department3, String athletic1, String athletic2, String noSession,
			String campusTour, String lunch, String studentAid) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthDate = birthDate;
		this.gender = gender;
		this.email = email;
		this.telephone = telephone;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.majorId = majorId;
		this.department1 = department1;
		this.department2 = department2;
		this.department3 = department3;
		this.athletic1 = athletic1;
		this.athletic2 = athletic2;
		this.noSession = noSession;
		this.campusTour = campusTour;
		this.lunch = lunch;
		this.studentAid = studentAid;
	}

	public User() {
		super();
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
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

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getMajorId() {
		return majorId;
	}

	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}

	public String getDepartment1() {
		return department1;
	}

	public void setDepartment1(String department1) {
		this.department1 = department1;
	}

	public String getDepartment2() {
		return department2;
	}

	public void setDepartment2(String department2) {
		this.department2 = department2;
	}

	public String getDepartment3() {
		return department3;
	}

	public void setDepartment3(String department3) {
		this.department3 = department3;
	}

	public String getAthletic1() {
		return athletic1;
	}

	public void setAthletic1(String athletic1) {
		this.athletic1 = athletic1;
	}

	public String getAthletic2() {
		return athletic2;
	}

	public void setAthletic2(String athletic2) {
		this.athletic2 = athletic2;
	}

	public String getNoSession() {
		return noSession;
	}

	public void setNoSession(String noSession) {
		this.noSession = noSession;
	}

	public String getCampusTour() {
		return campusTour;
	}

	public void setCampusTour(String campusTour) {
		this.campusTour = campusTour;
	}

	public String getLunch() {
		return lunch;
	}

	public void setLunch(String lunch) {
		this.lunch = lunch;
	}

	public String getStudentAid() {
		return studentAid;
	}

	public void setStudentAid(String studentAid) {
		this.studentAid = studentAid;
	}

	




}
