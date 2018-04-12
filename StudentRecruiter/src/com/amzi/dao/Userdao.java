package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.amzi.dao.*;


public class Userdao {

	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	
	public Userdao()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://198.91.85.78/stude120_SENGGroup","stude120_admin","admin");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	
	
	public void insertData(User u)
	{
		try {
			String sql = "insert into Student (firstName,lastName,birthDate,gender,email,telephone,street,city,state,zip,"
					+ "majorId,department1,department2,department3,athletic1,athletic2,noSession,campusTour,lunch,studentAid)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, u.getFirstName());
            pst.setString(2, u.getLastName());
            pst.setString(3, u.getBirthDate());
            pst.setString(4, u.getGender());   
            pst.setString(5, u.getEmail());
            pst.setString(6, u.getTelephone());
            pst.setString(7, u.getStreet());
            pst.setString(8, u.getCity());
            pst.setString(9, u.getState());
            pst.setString(10, u.getZip());
            pst.setString(11, u.getMajorId());
            //majorid----11
            pst.setString(12, u.getDepartment1());
            pst.setString(13, u.getDepartment2());
            pst.setString(14, u.getDepartment3());
            //dept3------14
            pst.setString(15, u.getAthletic1());
            pst.setString(16, u.getAthletic2());
            pst.setString(17, u.getNoSession());
            //no session--17
            pst.setString(18, u.getCampusTour());
            pst.setString(19, u.getLunch());
            pst.setString(20, u.getStudentAid());
            
            
            pst.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//public User allData(String firstName, String lastName, String birthDate) {
		// TODO Auto-generated method stub
		
	public User allData(String email) {
		User ad=null;
		
		String ss="select firstName,lastName,birthDate,gender,email,telephone,street,city,state,zip,majorId,department1,department2,department3,athletic1,athletic2,noSession,campusTour,lunch,studentAid from Student where email=?";
		try {
			pst=con.prepareStatement(ss);
			pst.setString(1, email);
			
			
			rs=pst.executeQuery();
			
			ad= new User();
			
			while(rs.next()){
				ad.setFirstName(rs.getString("firstName"));
				ad.setLastName(rs.getString("lastName"));
				ad.setBirthDate(rs.getString("birthDate"));
				ad.setGender(rs.getString("gender"));
				ad.setEmail(rs.getString("email"));
				ad.setTelephone(rs.getString("telephone"));
				ad.setStreet(rs.getString("street"));
				ad.setCity(rs.getString("city"));
				ad.setState(rs.getString("state"));
				ad.setZip(rs.getString("zip"));
				ad.setMajorId(rs.getString("majorId"));
				ad.setDepartment1(rs.getString("department1"));
				ad.setDepartment2(rs.getString("department2"));
				ad.setDepartment3(rs.getString("department3"));
				ad.setAthletic1(rs.getString("athletic1"));
				ad.setAthletic2(rs.getString("athletic2"));
				ad.setNoSession(rs.getString("noSession"));
				ad.setCampusTour(rs.getString("campusTour"));
				ad.setLunch(rs.getString("lunch"));
				ad.setStudentAid(rs.getString("studentAid"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ad;
	}
	
	
	public ArrayList<User> viewData() 
	{
	
		ArrayList<User> a=null;
		
		String s1="select firstName,lastName,birthDate,gender,email,telephone,street,city,state,zip,majorId,department1,department2,department3,athletic1,athletic2,noSession,campusTour,lunch,studentAid from Student";
		
		try {
			pst=con.prepareStatement(s1);
			rs=pst.executeQuery();
			
			a=new ArrayList<User>();
			while(rs.next())
			{
				User u=new User();
				u.setFirstName(rs.getString("firstName"));
				u.setLastName(rs.getString("lastName"));
				u.setBirthDate(rs.getString("birthDate"));
				u.setGender(rs.getString("gender"));
				u.setEmail(rs.getString("email"));
				u.setTelephone(rs.getString("telephone"));
				u.setStreet(rs.getString("street"));
				u.setCity(rs.getString("city"));
				u.setState(rs.getString("state"));
				u.setZip(rs.getString("zip"));
				u.setMajorId(rs.getString("majorId"));
				u.setDepartment1(rs.getString("department1"));
				u.setDepartment2(rs.getString("department2"));
				u.setDepartment3(rs.getString("department3"));
				u.setAthletic1(rs.getString("athletic1"));
				u.setAthletic2(rs.getString("athletic2"));
				u.setNoSession(rs.getString("noSession"));
				u.setCampusTour(rs.getString("campusTour"));
				u.setLunch(rs.getString("lunch"));
				u.setStudentAid(rs.getString("studentAid"));
				a.add(u);
				
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return a;
		
	}
	
}
	

