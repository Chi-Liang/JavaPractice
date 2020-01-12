<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* DivTable.com */
.divTable{
	display: table;
	width: 100%;
}
.divTableRow {
	display: table-row;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
}
.divTableCell, .divTableHead {
	border: 1px solid #999999;
	display: table-cell;
	padding: 3px 10px;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
	font-weight: bold;
}
.divTableFoot {
	background-color: #EEE;
	display: table-footer-group;
	font-weight: bold;
}
.divTableBody {
	display: table-row-group;
}
</style>
</head>
<body>
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableCell">第一頁問題一</div>
				<div class="divTableCell"><%=request.getAttribute( "p1q1" ) %></div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">第一頁問題二</div>
				<div class="divTableCell"><%=request.getAttribute( "p1q2" ) %></div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">第二頁問題一</div>
				<div class="divTableCell">${param.p2q1}</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">第二頁問題二</div>
				<div class="divTableCell">${param.p2q2}</div>
			</div>
		</div>
	</div>
	<!-- DivTable.com -->
</body>
</html>