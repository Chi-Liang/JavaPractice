<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<a href='<struts:url action="initAddBook"></struts:url>'>增加書籍</a>
	<a href='<struts:url action="listBook"></struts:url>'>書籍列表</a>
	<a href='<struts:url action="clearBook"></struts:url>'>清空書籍</a></br></br>

	<struts:property value="title"/>
	<table>
		<tr>
			<th>書名</th>
			<th>作者</th>
			<th>出版日期</th>
		</tr>
		<struts:iterator var="book" value="booklist">
			<tr>
				<td>${book.name}</td>
				<td>${book.author}</td>
				<td>${book.publishDate}</td>
			</tr>
		
		</struts:iterator>
		
		
	</table>
	
	
</div>
</body>
</html>