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

</div>
</body>
</html>