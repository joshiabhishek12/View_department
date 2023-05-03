package pack;
import java.sql.Connection;
import java.sql.PreparedStatement;
import pack.Database;
@SuppressWarnings("unused")
public class Viewdeptvalue {
public void insertdeptvalue(String dep_id,String depname,String description,String count)
{
	Database run=new Database();
	Connection dbconnection=run.get_Connection();

	PreparedStatement ps=null;
	try {
String query="insert into data(dep_id,depname,description,count) values(?,?,?,?)";
     ps=dbconnection.prepareStatement(query);
	 ps.setString(1, dep_id);
	 ps.setString(2, depname);
	 ps.setString(3, description);
	 ps.setString(4, count);
	 ps.executeUpdate();
	} catch (Exception e) {
	 System.err.println(e);
	}
}
}