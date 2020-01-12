<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aaa(){
		var p1q1 = document.getElementById("p1q1").value;
		var p1q2 = document.getElementById("p1q2").value;

		var path = "/webTest10/BServlet?action=getUrlMethod&p1q1="+p1q1+"&p1q2="+p1q2;
		window.location = path;
}
</script>
</head>
<body>
<div>
問題一:<input type="text" id="p1q1"></br>
問題二:<input type="text" id="p1q2"></br>
<button onclick="aaa();">click me</button>
</div>
</body>
</html>