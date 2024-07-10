import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseConnector {
	
	private static Connection connect() {
		Connection con = null;
		try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/md","root","");

        }catch (Exception e) {
            	e.printStackTrace();
        }
		return con;
	}
    		

    public static ResultSet UserSearch(String username, String password){
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("select * from users where username = ? and password = ?");
    	pst.setString(1, username);
    	pst.setString(2, password);
    	rs = pst.executeQuery();
    	return rs;
    	}catch(Exception e){
    		return null;
    	}
    }
    public static boolean registerUser(String username,String amka, String password, String path, int role) {
    	Connection con =connect();
    	try {
    		PreparedStatement pst = con.prepareStatement("insert into users(username,amka, password, path,role) values(?,?,?,?,?)");
    		pst.setString(1, username);
    		pst.setString(2, amka);
        	pst.setString(3, password);
        	pst.setString(4, path);
        	pst.setInt(5, role);
        	int rawCount = pst.executeUpdate();
        	return true;
    	}catch(Exception e) {
    		return false;
    	}
    }
    
    public static Doctor searchDoc(String username) {
    	Connection con = connect();
    	try {
	    	ResultSet rs = null;
	    	PreparedStatement pst = con.prepareStatement("select * from doctors where username = ?");
	    	pst.setString(1, username);
	    	rs = pst.executeQuery();
	    	if (rs!=null) {
	    		Doctor d1 = null;
	    		while (rs.next()) {
	    			d1 = new Doctor(username, rs.getString("amka"), rs.getString("fullname"), rs.getString("speciality"), rs.getString("contactinfo"), rs.getString("location"));
	    		}
	    		return d1;
	    		
	    	}else {
	    		return null;
	    	}
	    	
    	}catch(Exception e){
    		return null;
    	}
    }
    
    public static boolean updateDoc(String username, String amka,String fullname, String location, String phone,String bio,String speciality) {
    	Connection con =connect();
    	try {
    		PreparedStatement pst = con.prepareStatement("insert into doctors(username, amka,fullname, location,speciality, contactinfo,brief) values(?,?,?,?,?,?,?)");
    		pst.setString(1, username);
    		pst.setString(2,amka);
    		pst.setString(3, fullname);
    		pst.setString(4, location);
        	pst.setString(5, speciality);
        	pst.setString(6, phone);
        	pst.setString(7, bio);
        	int rawCount = pst.executeUpdate();
        	return true;
    	}catch(Exception e) {
    		System.out.println(e);
    		return false;
    	}
    }
    
    public static boolean searchforregister(String username) {
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("select * from doctors where username = ?");
    	pst.setString(1, username);
    	rs = pst.executeQuery();
    	if (!rs.next()) {
    	    // ResultSet is empty
    	    return false;
    	}else {
    		return true;
    	}
    	}catch(Exception e){
    		System.out.println(e);
    		return false;
    	}
    }
    
    public static List<Doctor> getPaidDoctors(){
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("SELECT d.* FROM doctors d JOIN paiddoc p ON d.username = p.username");
    	rs = pst.executeQuery();
    	List<Doctor> mainlist = new ArrayList<>();;
    	while (rs.next()) {
    		Doctor d1 = new Doctor(rs.getString("username"), rs.getString("amka"), rs.getString("fullname"), rs.getString("speciality"), rs.getString("contactinfo"), rs.getString("location"));
    		mainlist.add(d1);
    	}
    	return mainlist;
    	}catch(Exception e){
    		System.out.println(e);
    	}
		return null;
    }
}

