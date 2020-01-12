package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

public class BaseDao {

	static ResourceBundle cp = ResourceBundle.getBundle("dbProperties.db");

	static final String JDBC_DRIVER = cp.getString("JDBC_DRIVER");
	static final String DB_URL = cp.getString("DB_URL");
	static final String USER = cp.getString("USER");
	static final String PASSWORD = cp.getString("PASSWORD");
	
	public Connection getConnection() {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
			System.out.println("connection sucessfully");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
	
	
	

	public void free(Connection conn ,Statement stmt, ResultSet rs) {
		
		try {
			if(rs != null) {
				rs.close();
			}
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	
	}
	
}
