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
	    	console.log(this.responseText);
	        var myObj = JSON.parse(this.responseText);
	        document.getElementById("demo1").innerHTML = myObj[0].aaa;
	        document.getElementById("demo2").innerHTML = myObj[0].bbb;
	    }
	};
	xmlhttp.open("GET", "/webTest8/JsonServlet?action=jsonGet", true);
	xmlhttp.send();
	//測試會繼續走
	console.log("aaaaaaaa");
}

function bbb(){
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	        var myObj = JSON.parse(this.responseText);
	        
	        var text = myObj[0].id+":"+myObj[0].name+":"+myObj[0].sex;
	        document.getElementById("demo3").innerHTML = text;
	    }
	};
	xmlhttp.open("GET", "/webTest8/JsonServlet?action=jsonGetModel", true);
	xmlhttp.send();
}

//測試局部更新
function ccc(){
	debugger;
}
</script>
</head>
<body onload="ccc();">
<div id="demo1"></div>
<div id="demo2"></div>
<div id="demo3"></div>
<button onclick="aaa();">click me:a</button>
<button onclick="bbb();">click me:b</button>
</body>
</html>