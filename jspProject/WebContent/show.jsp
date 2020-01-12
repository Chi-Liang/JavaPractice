<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function aaa(){
	window.location.href ="http://localhost:8080/jspProject/showDetail.jsp";
}
</script>
</head>
<body>
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableCell"><button onclick="aaa();">showDetail</button> id</div>
				<div class="divTableCell">${sessionScope.id}</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell"><a href="MvcServlet?action=showDetail">showDetail</a> name</div>
				<div class="divTableCell">${sessionScope.name}</div>
			</div>
		</div>
	</div>
</body>
</html>