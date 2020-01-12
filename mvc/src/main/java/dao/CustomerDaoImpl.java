package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CustomerDaoImpl implements CustomerDao{
	
	@Override
	public String getAll() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String id = "";
		BaseDao baseDao = new BaseDao();
		try {
			conn = baseDao.getConnection();
			stmt = conn.createStatement();
		    String sql = "SELECT * FROM customer";
		    rs = stmt.executeQuery(sql);
		     while(rs.next()){
		         id  = rs.getString("id");
		         System.out.println("id:" + id);
		     }
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
			baseDao.free(conn, stmt, rs);
		}
		
		return id;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
        //sample();
	}

}
