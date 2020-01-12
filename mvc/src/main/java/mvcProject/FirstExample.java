package mvcProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class FirstExample {
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost:3306/mvcpractice";

   static final String USER = "root";
   static final String PASS = "2526abcd";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      Class.forName("com.mysql.jdbc.Driver");

      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

//      //STEP 4: Execute a query
//      System.out.println("Creating statement...");
//      stmt = conn.createStatement();
//      String sql;
//      sql = "SELECT id, first, last, age FROM Employees";
//      ResultSet rs = stmt.executeQuery(sql);
//
//      while(rs.next()){
//         //Retrieve by column name
//         int id  = rs.getInt("id");
//         int age = rs.getInt("age");
//         String first = rs.getString("first");
//         String last = rs.getString("last");
//
//         //Display values
//         System.out.print("ID: " + id);
//         System.out.print(", Age: " + age);
//         System.out.print(", First: " + first);
//         System.out.println(", Last: " + last);
//      }
//      rs.close();
//      stmt.close();
      conn.close();
   }catch(SQLException se){
      se.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }
   }
   System.out.println("Goodbye!");
}
}