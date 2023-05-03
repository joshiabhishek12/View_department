package pack;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

import pack.Database;

@SuppressWarnings("unused")
public class Editvalue {
	
	public User_Bean get_valuesofuser(String dep_id) {
    	
    	User_Bean obj_User_bean=new User_Bean();
        Database run=new Database();
        Connection dbconnection= run.get_Connection();

        java.sql.PreparedStatement ps=null;
        ResultSet rs=null;

        try {
            String query="select * from data where dep_id=?";
            ps=dbconnection.prepareStatement(query);
            ps.setString(1,dep_id );
            rs=ps.executeQuery();

            while(rs.next()) {
                
                obj_User_bean.setDep_id(rs.getString("dep_id"));
                obj_User_bean.setDepname(rs.getString("depname"));
                obj_User_bean.setDescription(rs.getString("description"));
                obj_User_bean.setCount(rs.getString("count"));
               
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return obj_User_bean;

}
	public void edit_user(User_Bean obj_userbean) {
	    Database run = new Database();
	    Connection dbconnection = run.get_Connection();
	    java.sql.PreparedStatement ps = null;
	    try {
	        String query = "update data set depname=?,description=?,count=? where dep_id=?";
	        ps = dbconnection.prepareStatement(query);
	        ps.setString(1, obj_userbean.getDepname());
	        ps.setString(2, obj_userbean.getDescription());
	        ps.setString(3, obj_userbean.getCount());
	        ps.setString(4, obj_userbean.getDep_id());
	        ps.executeUpdate();
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	}

	
	
}

