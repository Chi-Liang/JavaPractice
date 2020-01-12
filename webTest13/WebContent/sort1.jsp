<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.min.js"></script>
<script type="text/javascript">
function sortArr(){
	
	var arr = [];
	$("li").each(function(){
		var ele = $(this).text();	
		arr.push(ele);
	});
	
	arr = arr.sort(sortNumber).reverse();
	
	var list = "";
	for (var i = 0; i < arr.length; i++) {
		list += "<li>" + arr[i] + "</li>";
	}
	
	$("ul").empty().append(list);
}

function sortNumber(a,b){
	return a - b;
}
</script>
</head>
<body>
<button onclick="sortArr();">sort</button>
<ul>
	<li>3</li>
	<li>6</li>
	<li>2</li>
	<li>8</li>
	<li>55</li>
</ul>
</body>
</html>