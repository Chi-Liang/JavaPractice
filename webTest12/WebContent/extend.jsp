<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
function addDiv(options,num) {
    var defaults = { 
        border: "solid 1px black",
        backgroundColor: "#cccccc",
        width: "200px", height: "50px",
    margin: "10px"
    };
    var settings = $.extend(defaults, options);
    var id = "#div"+num;
    $(id).css(settings);
}


$(document).ready(function(){
	addDiv({ width: "400px" },1);
	addDiv({ backgroundColor: "orange", height: "100px" },2);
});
</script>
</head>
<body>
<div id="div1"></div>
<div id="div2"></div>
</body>
</html>