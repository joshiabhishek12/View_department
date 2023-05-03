package pack;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import pack.Database;

@SuppressWarnings("unused")
public class Readvalue{
    
    private Connection connection;

    public List<User_Bean> get_values() {
        List<User_Bean> userList = new ArrayList<User_Bean>();
        Database run=new Database();
        Connection dbconnection= run.get_Connection();

        java.sql.PreparedStatement ps=null;
        ResultSet rs=null;

        try {
            String query="select * from data";
            ps=dbconnection.prepareStatement(query);
            rs=ps.executeQuery();

            while(rs.next()) {
                User_Bean obj_User_bean=new User_Bean();
                obj_User_bean.setDep_id(rs.getString("dep_id"));
                obj_User_bean.setDepname(rs.getString("depname"));
                obj_User_bean.setDescription(rs.getString("description"));
                obj_User_bean.setCount(rs.getString("count"));
                userList.add(obj_User_bean);
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return userList;
    }
}
