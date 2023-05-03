package CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import common.DB_Connection;
public class Insert_Values {
public void insert_values(String emo_id,String first_name,String user_name,String address)
{
	 DB_Connection obj_DB_Connection=new DB_Connection();
	 Connection connection=obj_DB_Connection.get_Connection();
	 PreparedStatement ps=null;
	try {
String query="insert into user(emo_id,first_name,user_name,address) values(?,?,?,?)";
	 ps=connection.prepareStatement(query);
	 ps.setString(1, emo_id);
	 ps.setString(2, first_name);
	 ps.setString(3, user_name);
	 ps.setString(4, address);
	 ps.executeUpdate();
	} catch (Exception e) {
	 System.err.println(e);
	}
}
}