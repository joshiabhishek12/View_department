package pack;


	import java.sql.Connection;
	import java.sql.DriverManager;

	public class Database {
		
		public static void main(String[] args) {
			Database db= new Database();
			
			System.out.println(db.get_Connection());
		}
		
		public Connection get_Connection() {
			Connection connection=null;
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/myfile", "root", "12345");
				
			}
			catch(Exception e) {
				System.out.println(e);
			}
			return connection;
		}

		

	}

