import java.sql.*;

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
	    			d1 = new Doctor(username, rs.getString("amka"), rs.getString("fullname"), rs.getString("specialty"), rs.getString("contactinfo"), rs.getString("location"));
	    		}
	    		return d1;
	    		
	    	}else {
	    		return null;
	    	}
	    	
    	}catch(Exception e){
    		return null;
    	}
    }
}

