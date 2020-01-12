<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function aaa(){
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	        var myObj = JSON.parse(this.responseText);
	    }
	};
	xmlhttp.open("GET", "https://reqres.in/api/users?page=2", true);
	xmlhttp.send();
}

</script>
</head>
<body>
<div id="demo1"></div>
<div id="demo2"></div>
<button onclick="aaa();">click me:a</button>
</body>
</html>