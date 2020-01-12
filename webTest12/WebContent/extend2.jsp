<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

var a = {name:"blue",pass:123};
var b = {name:"red",pass:456,age:1};

$.extend({
	showName:function(name){
		alert(name);
	}
});

$(document).ready(function(){
	var c = $.extend(a,b);
	$.showName(c.name);
});
</script>
</head>
<body>

</body>
</html>