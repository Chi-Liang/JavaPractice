<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="AServlet" method="post">
問題一:<input type="text" name="p2q1"></br>
問題二:<input type="text" name="p2q2"></br>
<input type="hidden" name="p1q1" value="<%=request.getAttribute( "p1q1" ) %>"></br>
<input type="hidden" name="p1q2" value="${param.p1q2}"></br>
<input type="submit" name="page" value="goPage3">
</form>
</body>
</html>

