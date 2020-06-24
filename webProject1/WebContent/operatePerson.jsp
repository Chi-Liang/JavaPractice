<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%!
	public String forSQL(String sql){
		return sql.replace("'", "\\'");
	}

 %>
 
 <%
		String action = (String)request.getParameter("action");
		String id = (String)request.getParameter("id");
		String name = (String)request.getParameter("name");
		String nickname = (String)request.getParameter("nickname");
		String age = (String)request.getParameter("age");
		String sex = (String)request.getParameter("sex");
		String birthday = (String)request.getParameter("birthday");
		String description = (String)request.getParameter("description");
		
		String DBusername = "root";
		String DBuserpassword = "25262728";
		
		if("add".equals(action)){
			
			String sql = "insert into tb_person (name ,nickname,age,sex,birthday,description) values " +
						"('" + name + "','"+ nickname+ "', " +
						" "+  age + ",'" + sex + "','" + 	birthday + "'," +
						" '" + description + "')";
			
			
			Connection conn = null;
			Statement stmt = null;
			int result = 0;
			try{
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/databaseeng?serverTimezone=UTC", DBusername, DBuserpassword);
			stmt = conn.createStatement();
			
			result = stmt.executeUpdate(sql);
			}catch(Exception e){
				out.println("執行SQL\""+ sql + "\"時發生例外:" + e.getMessage());
				return;
			}finally{
				if(stmt != null){
					stmt.close();	
				}
				if(conn != null){
					conn.close();
				}
			}
		return;		
	  }else if("del".equals(action)){
	  	String id1 = (String)request.getParameter("id"); 
	  	if(id1 == null || id1.length() == 0 ){
	  		return;
	  	}
	  	
	  	String condition = id1;
	  	
	  	String sql = "delete from tb_person where id in (" + condition+ ")";
	  	Connection conn = null;
			Statement stmt = null;
			int result = 0;
			try{
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/databaseeng?serverTimezone=UTC", DBusername, DBuserpassword);
			stmt = conn.createStatement();
			
			result = stmt.executeUpdate(sql);
			}catch(Exception e){
				out.println("執行SQL\""+ sql + "\"時發生例外:" + e.getMessage());
				return;
			}finally{
				if(stmt != null){
					stmt.close();	
				}
				if(conn != null){
					conn.close();
				}
			}
		return;		
	  } 
  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'operatePerson.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
