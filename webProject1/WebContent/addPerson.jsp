<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <%
		String action = (String)request.getAttribute("action");
		String id = (String)request.getAttribute("id");
		String name = (String)request.getAttribute("name");
		String nickname = (String)request.getAttribute("nickname");
		String age = (String)request.getAttribute("age");
		String sex = (String)request.getAttribute("sex");
		String birthday = (String)request.getAttribute("birthday");
		String description = (String)request.getAttribute("description");
		
		boolean isEdit = "edit".equals(action);
	 %>
    <title><%= isEdit ? "修改" : "新增" %></title>
    <style type="text/css">
    body{
    	font-size: 12px;
    }
    td{
    	font-size: 12px;
    	line-height: 25px;
    }
    
    </style>
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
	<form action="operatePerson.jsp" method="post">
		<input type="hidden" name="action" value="<%=isEdit?"save":"add"%>">
		<input type="hidden" name="id" value="<%=isEdit?  id :"" %>">
		
		<div align="center"><br>
			<fieldset style="width: 75%;">
			<legend><%=isEdit?"修改":"新增"%></legend>
			<table align="center">
				<tr>
					<td>姓名</td>
					<td><input type="text" name="name" value="<%=isEdit?name:""%>"></td>
					<td>姓名</td>
					<td><input type="text" name="name" value="<%=isEdit?name:""%>"></td>
				</tr>
				<tr>
					<td>暱稱</td>
					<td><input type="text" name="nickname" value="<%=isEdit?nickname:""%>"></td>
				</tr>
				<tr>
					<td>性別</td>
					<td><input type="radio" name="sex" value="male" id="sex_male" <%=isEdit && "male".equals(sex) ? "checked" :"" %> >
					<label for="sex_male">男</label>
					<td><input type="radio" name="sex" value="female" id="sex_female" <%=isEdit && "female".equals(sex) ? "checked" :"" %> >
					<label for="sex_female">女</label>
					</td>
				</tr>
				<tr>
					<td>年齡</td>
					<td><input type="age" name="age" value="<%=isEdit?age:""%>"></td>
				</tr>
				<tr>
					<td>生日</td>
					<td><input type="text" name="birthday" value="<%=isEdit?birthday:""%>">
					yyyy-MM-dd
					</td>
				</tr>
				<tr>
					<td>描述</td>
					<td><textarea name="description"  rows="5" <%=isEdit?description:""%> ></textarea>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
					<input type="submit" value="<%=isEdit?"儲存":"增加"%>"	 />
					<input type="button" value="回上一頁"	onclick="history.go(-1)" />
					</td>
				</tr>
				
			</table>
			</fieldset>
		</div>
	</form>  
  </body>
</html>
