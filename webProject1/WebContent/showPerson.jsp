<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:directive.page import="java.sql.Date"/>
<jsp:directive.page import="java.sql.Timestamp"/>
<jsp:directive.page import="java.sql.SQLException"/>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showPerson.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
    body,td,th,input{
    	font-size: 12px;
    	text-align: center;
    }
    </style>
    <script type="text/javascript">
    function aaa(){
		confirm("確定要刪除");    
    }
    </script>
  </head>
  
  <body>
	<table align="right">
		<tr>
			<td>
				<a href="addPerson.jsp">新增人員資料</a>
			</td>
		</tr>
	</table>
	<%
		String DBusername = "root";
		String DBuserpassword = "25262728";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/databaseeng?serverTimezone=UTC", DBusername, DBuserpassword);
		stmt = conn.createStatement();
		if(conn != null && !conn.isClosed()){
			System.out.println("Database Linked successfully");
		}
		
		rs = stmt.executeQuery("select * from tb_person");
	 %>
	 <form>
	 <table bgcolor="#CCCCCC" cellspacing="1" cellpadding="5" width="100%">
	 	<tr bgcolor="#FFFFFF">
	 		<th></th>
	 		<th>ID</th>
	 		<th>姓名</th>
	 		<th>綽號</th>
	 		<th>年齡</th>
	 		<th>性別</th>
	 		<th>生日</th>
	 		<th>備註</th>
	 		<th>時間</th>
	 		<th>操作</th>
	 	</tr>
	 	<%
	 		while(rs.next()){
	 			int id = rs.getInt("id");
	 			int age = rs.getInt("age");
	 			String name = rs.getString("name");
	 			String nickname = rs.getString("nickname");
	 			String sex = rs.getString("sex");
	 			String description = rs.getString("description");
	 			Date birthday = rs.getDate("birthday");
	 			Timestamp createTime = rs.getTimestamp("create_time");
	 		
	 		
	 		
	 		out.println("<tr bgcolor=#CCCCCC>");
	 		out.println("<td> <input type=checkbox name=id value="+ id +" ></td>");
	 		out.println("<td> " + id + "</td>");
	 		out.println("<td> " + name + "</td>");
	 		out.println("<td> " + nickname + "</td>");
	 		out.println("<td> " + age + "</td>");
	 		out.println("<td> " + sex + "</td>");
	 		out.println("<td> " + birthday + "</td>");
	 		out.println("<td> " + description + "</td>");
	 		out.println("<td> " + createTime + "</td>");
	 		out.println("<td>");
	 		out.println("<a href='operatePerson.jsp?action=del&id="+ id +"' onclick = 'aaa();' >刪除</a>");
	 		out.println("<a href='operatePerson.jsp'action=del&id="+ id +"'>修改</a>");
	 		out.println("<td>");
	 		out.println("</tr>");
	 	  }
	 	 %>
	 	
	 	
	 </table>	
	</form>
	<%
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(rs != null){
				rs.close();
			}
			if(stmt != null){
				stmt.close();	
			}
			if(conn != null){
				conn.close();
			}
		}
	
	 %>
    
    
  </body>
</html>
