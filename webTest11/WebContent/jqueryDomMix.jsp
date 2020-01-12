<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	    $("#divTemplate").hide();
	    clickFunction();
});

function clickFunction(){
	var val = {rank:2,viboproject:"數據LTE2099型"}; 
	$("#btn1").click(function(){
		
		var j = 0;
		var person = {
				one:["1","數據LTE1599型","20150411","20150311","20150211","1940","1921","1909","5780","5775"],
				two:["2","數據LTE1799型","20150511","20150611","20150711","2099","2058","1966","6585","6750"],
				three:["3","數據LTE1899型","20150811","20150911","20151011","1950","2066","1999","6320","6350"]
		};
		
		for ( var i in person) {
			j++;
			$("#td_project").html("推建方案"+person[i][0]+":<em>"+person[i][1]+"</em>");
			$("#td_createdate1").html(person[i][2]);
			$("#td_createdate2").html(person[i][3]);
			$("#td_createdate3").html(person[i][4]);
			$("#td_recheckvvsdfee1").html(person[i][5]);
			$("#td_recheckvvsdfee2").html(person[i][6]);
			$("#td_recheckvvsdfee3").html(person[i][7]);
			$("#td_red_recheckvvsdfeeall").html(person[i][8]);
			$("#td_recheckvvsdfeeall").html(person[i][9]);
			
			var tabVal = $("#divTemplate").html();
			$("#div"+j).html(tabVal).show();
		}
		
	});
}
</script>
</head>
<body>
<div id="divTemplate">
<table class="center" border="2">
		<caption id="td_project">推薦方案1：<em>數據LTE1899型</em></caption>
		<tr>
			<th id="td_createdate1">20150411</th>
			<th id="td_createdate2">20150311</th>
			<th id="td_createdate3">20150211</th>
			<th>三期帳單總金額1</th>
			<th>三期帳單總金額2</th>
		</tr>
		<tr>
			<td id="td_recheckvvsdfee1" bgcolor="red">1940</td>
			<td id="td_recheckvvsdfee2" bgcolor="green">1921</td>
			<td id="td_recheckvvsdfee3" bgcolor="blue">1909</td>
			<%--第一筆紅底白字 --%>
			<td id="td_red_recheckvvsdfeeall"><i>5770</i></td>
			<td id="td_recheckvvsdfeeall"><i>5775</i></td>
		</tr>
	</table>
	
	
</div>	
<button id="btn1">顯示所有資費</button>
<div id="div1"></div>
<div id="div2"></div>
<div id="div3"></div>

</body>

</html>