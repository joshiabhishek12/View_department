package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Deletevalue {
    
    public void delete_value(String dep_id) {
        Database run = new Database();
        Connection dbconnection = run.get_Connection();
        PreparedStatement ps = null;
        try {
            String query = "DELETE FROM data WHERE dep_id=?";
            ps = dbconnection.prepareStatement(query);
            ps.setString(1, dep_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (dbconnection != null) {
                    dbconnection.close();
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }
}
