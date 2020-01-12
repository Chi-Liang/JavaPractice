<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
	<a href='<struts:url action="clearBook"></struts:url>'>清空書籍</a>

	<struts:form action="addBook">
		<struts:label value="增加書籍"></struts:label>
		<struts:textfield name="book.name" label="書名"></struts:textfield>
		<struts:textfield name="book.author" label="作者"></struts:textfield>
		<struts:textfield name="book.publishDate" label="出版日期"></struts:textfield>
		<struts:submit value="增加"></struts:submit>
	</struts:form>

</div>
</body>
</html>