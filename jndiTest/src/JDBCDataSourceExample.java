import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/JDBCDataSourceExample")
public class JDBCDataSourceExample extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Context ctx = null;
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Context ctx1 = null;
		Connection con1 = null;
		Statement stmt1 = null;
		ResultSet rs1 = null;
		
		try{
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:/comp/env/W9011921");
			
			con = ds.getConnection();
			stmt = con.createStatement();
			
			System.out.println("aaaaaaaaaaaa");
			rs = stmt.executeQuery("select id, name from customer");
			
			PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            out.print("<html><body><h2>Employee Details</h2>");
            out.print("<table border=\"1\" cellspacing=10 cellpadding=5>");
            out.print("<th>Employee ID</th>");
            out.print("<th>Employee Name</th>");
            
            while(rs.next())
            {
                out.print("<tr>");
                out.print("<td>" + rs.getString("id") + "</td>");
                out.print("<td>" + rs.getString("name") + "</td>");
                out.print("</tr>");
            }
            out.print("</table></body><br/>");
            
            //lets print some DB information
            out.print("<h3>Database Details</h3>");
            out.print("Database Product: "+con.getMetaData().getDatabaseProductName()+"<br/>");
            out.print("Database Connection: "+con.getMetaData().getConnection()+"<br/>");
            out.print("Database Driver: "+con.getMetaData().getDriverName());
            out.print("</html>");
            
        	ctx1 = new InitialContext();
			DataSource ds1 = (DataSource) ctx1.lookup("java:/comp/env/npDS");
			con1 = ds1.getConnection();
			stmt1 = con1.createStatement();
			
			System.out.println("aaaaaaaaaaaa");
			rs1 = stmt1.executeQuery("select id, name from customer");
			
			PrintWriter out1 = response.getWriter();
            response.setContentType("text/html");
            out1.print("<html><body><h2>Employee Details</h2>");
            out1.print("<table border=\"1\" cellspacing=10 cellpadding=5>");
            out1.print("<th>Employee ID</th>");
            out1.print("<th>Employee Name</th>");
            
            while(rs1.next())
            {
                out1.print("<tr>");
                out1.print("<td>" + rs1.getString("id") + "</td>");
                out1.print("<td>" + rs1.getString("name") + "</td>");
                out1.print("</tr>");
            }
            out1.print("</table></body><br/>");
            
            //lets print some DB information
            out1.print("<h3>Database Details</h3>");
            out1.print("Database Product: "+con1.getMetaData().getDatabaseProductName()+"<br/>");
            out1.print("Database Connection: "+con1.getMetaData().getConnection()+"<br/>");
            out1.print("Database Driver: "+con1.getMetaData().getDriverName());
            out1.print("</html>");
            
		}catch(NamingException e){
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
//				rs.close();
				stmt.close();
				con.close();
				ctx.close();
				
				stmt1.close();
				con1.close();
				ctx1.close();
			} catch (SQLException e) {
				System.out.println("Exception in closing DB resources");
			} catch (NamingException e) {
				System.out.println("Exception in closing Context");
			}
			
		}
	}

}