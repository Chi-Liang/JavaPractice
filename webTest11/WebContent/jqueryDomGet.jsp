<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
			console.log("Text:"+$("#test").text());		 
	 });
	$("#btn2").click(function(){
		console.log("Html:"+$("#test").html());		 
 });
	
});
</script>
</head>
<body>
<table border="1" id="test">
  <tr>
    <th>Company</th>
    <th>Country</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Berglunds snabbköp</td>
    <td>Sweden</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Austria</td>
  </tr>
  <tr>
    <td>Island Trading</td>
    <td>UK</td>
  </tr>
</table>
<button id="btn1">Text</button>
<button id="btn2">Html</button>


</body>
</html>