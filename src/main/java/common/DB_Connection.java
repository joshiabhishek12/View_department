package common;


import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
	
	public static void main(String[] args) {
		DB_Connection objDB= new DB_Connection();
		
		System.out.println(objDB.get_Connection());
	}
	
	public Connection get_Connection() {
		Connection connection=null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_crud", "root", "12345");
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return connection;
	}

	

}