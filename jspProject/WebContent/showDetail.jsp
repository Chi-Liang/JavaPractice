<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableCell">id</div>
				<div class="divTableCell">${sessionScope.id}</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">name</div>
				<div class="divTableCell">${sessionScope.name}</div>
			</div>
		</div>
	</div>
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableCell">sex</div>
				<div class="divTableCell">${sessionScope.sex}</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">age</div>
				<div class="divTableCell">${sessionScope.age}</div>
			</div>
		</div>
	</div>
	<button><a href="MvcServlet?action=logout">logout</a></button>
	
</body>
</html>