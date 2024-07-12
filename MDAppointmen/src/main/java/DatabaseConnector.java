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
    		

	public static boolean isregistered(String username) {
		Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("select * from users where username = ?");
    	pst.setString(1, username);
    	rs = pst.executeQuery();
    	if (rs.next()) {
    		return true;
    	}else {
    		return false;
    	}
    	}catch(Exception e){
    		return false;
    	}
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
	    		if (rs.next()) {
	    			d1 = new Doctor(username, rs.getString("amka"), rs.getString("fullname"), rs.getString("speciality"), rs.getString("contactinfo"), rs.getString("location"),rs.getString("path"),rs.getString("brief"));
	    		}
	    		return d1;
	    		
	    	}else {
	    		System.out.println("empty");
	    		return null;
	    	}
	    	
    	}catch(Exception e){
    		return null;
    	}
    }
    
    public static boolean updateDoc(String username, String amka,String fullname, String location, String phone,String bio,String speciality,String path) {
    	Connection con =connect();
    	try {
    		PreparedStatement pst = con.prepareStatement("insert into doctors(username, amka,fullname, location,speciality, contactinfo,brief,path) values(?,?,?,?,?,?,?,?)");
    		pst.setString(1, username);
    		pst.setString(2,amka);
    		pst.setString(3, fullname);
    		pst.setString(4, location);
        	pst.setString(5, speciality);
        	pst.setString(6, phone);
        	pst.setString(7, bio);
        	pst.setString(8,path);
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
    		Doctor d1 = new Doctor(rs.getString("username"), rs.getString("amka"), rs.getString("fullname"), rs.getString("speciality"), rs.getString("contactinfo"), rs.getString("location"),rs.getString("path"),rs.getString("brief"));
    		mainlist.add(d1);
    	}
    	return mainlist;
    	}catch(Exception e){
    		System.out.println(e);
    	}
		return null;
    }
    
    public static List<Doctor> getDoctors(int role){
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("SELECT * FROM doctors WHERE speciality=?");
    	pst.setString(1, String.valueOf(role));
    	rs = pst.executeQuery();
    	List<Doctor> mainlist = new ArrayList<>();;
    	while (rs.next()) {
    		Doctor d1 = new Doctor(rs.getString("username"), rs.getString("amka"), rs.getString("fullname"), rs.getString("speciality"), rs.getString("contactinfo"), rs.getString("location"),rs.getString("path"),rs.getString("brief"));
    		mainlist.add(d1);
    	}
    	return mainlist;
    	}catch(Exception e){
    		System.out.println(e);
    	}
		return null;
    }
    
    public static boolean registerAppointment(String client, String doctor, String date, String time) {
    	Connection con = connect();
    	try {
    		ResultSet rs = null;
        	PreparedStatement pst = con.prepareStatement("SELECT * FROM appointments WHERE doctor=? and date = ? and time = ?");
        	pst.setString(1, doctor);
        	pst.setString(2, date);
        	pst.setString(3, time);
        	rs = pst.executeQuery();
        	if (rs.next()) {
        		return false;
        	}else {
	    		pst = con.prepareStatement("insert into appointments(client, doctor,date, time) values(?,?,?,?)");
	    		pst.setString(1, client);
	    		pst.setString(2,doctor);
	    		pst.setString(3, date);
	    		pst.setString(4, time);
	        	int rawCount = pst.executeUpdate();
	        	return true;
        	}
    	}catch(Exception e) {
    		System.out.println(e);
    		return false;
    	}
    }
    
    public static List<Appointment> getAppointments(String username){
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("SELECT * FROM Appointments WHERE client=? or doctor =?");
    	pst.setString(1, username);
    	pst.setString(2, username);
    	rs = pst.executeQuery();
    	List<Appointment> mainlist = new ArrayList<>();;
    	while (rs.next()) {
    		
    		Appointment d1 = new Appointment(rs.getString("date"), rs.getString("time"), getPatient(rs.getString("client")), searchDoc(rs.getString("doctor")));
    		mainlist.add(d1);
    	}
    	return mainlist;
    	}catch(Exception e){
    		System.out.println(e);
    	}
		return null;
    }
    
    public static void changeAd(String before, String after) {
    	Connection con = connect();
    	try {
        	PreparedStatement pst = con.prepareStatement("DELETE FROM paiddoc WHERE username=?");
        	pst.setString(1, before);
        	int rowsAffected = pst.executeUpdate();
	    	pst = con.prepareStatement("insert into paiddoc(username) values(?)");
	    	pst.setString(1, after);
	        int rawCount = pst.executeUpdate();
    	}catch(Exception e) {
    		System.out.println(e);
    	}
    }
    
    public static String getPath(String username) {
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("select * from users where username = ?");
    	pst.setString(1, username);
    	rs = pst.executeQuery();
    	if (rs.next()) {
    		if (!rs.getString("path").equals("")) {
    			return rs.getString("path");
    		}else {
    			return "images/unipi.png";
    		}
    	    
    	}
    	}catch(Exception e){
    		System.out.println(e);
    		return "images/unipi.png";
    	}
    	return "images/unipi.png";
    }
    
    public static Appointment getAppointment(String client, String doctor, String date, String time){
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("SELECT * FROM Appointments WHERE client=? and doctor =? and date=? and time=?");
    	pst.setString(1, client);
    	pst.setString(2, doctor);
    	pst.setString(3, date);
    	pst.setString(4, time);
    	rs = pst.executeQuery();
    	Appointment d1 = null;
    	if (rs.next()) {
    		d1 = new Appointment(rs.getString("date"), rs.getString("time"), getPatient(rs.getString("client")), searchDoc(rs.getString("doctor")));
    	}
    	return d1;
    	}catch(Exception e){
    		System.out.println(e);
    	}
		return null;
    }
    
    public static void deleteAppointment(String client, String doctor, String date, String time) {
    	Connection con = connect();
    	try {
        	PreparedStatement pst = con.prepareStatement("DELETE FROM Appointments WHERE client=? and doctor =? and date=? and time=?");
        	pst.setString(1, client);
        	pst.setString(2, doctor);
        	pst.setString(3, date);
        	pst.setString(4, time);
        	int rowsAffected = pst.executeUpdate();
    	}catch(Exception e) {
    		System.out.println(e);
    	}
    }
    
    public static Patient getPatient(String username) {
    	Connection con = connect();
    	try {
    	ResultSet rs = null;
    	PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE username=?");
    	pst.setString(1, username);
    	rs = pst.executeQuery();
    	Patient p1 = null;
    	if (rs.next()) {
    		p1 = new Patient(rs.getString("username"), rs.getString("amka"));
    	}
    	return p1;
    	}catch(Exception e){
    		System.out.println(e);
    	}
		return null;
    }
    
}

