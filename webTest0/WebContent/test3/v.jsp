<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aaa(){
	var table = document.createElement('table');
	table.setAttribute("id", "t1");
	table.setAttribute("class", "table table-striped table-bordered table-hover");
	var tr = document.createElement('tr');   

	var thead=document.createElement('thead');
	var tbody=document.createElement('tbody');

	var th1 = document.createElement('th');
	var th2 = document.createElement('th');

	var text1 = document.createTextNode('Text1');
	var text2 = document.createTextNode('Text2');
	th1.appendChild(text1);
	th2.appendChild(text2);
	thead.appendChild(tr);
	tr.appendChild(th1);
	tr.appendChild(th2);
	table.appendChild(thead);
	        
	table.appendChild(tbody);    
	for (var i = 1; i < 4; i++){
	    var tr = document.createElement('tr');   

	    var td1 = document.createElement('td');
	    var td2 = document.createElement('td');

	    var text1 = document.createTextNode('TextA'+i);
	    var text2 = document.createTextNode('TextB'+i);

	    td1.appendChild(text1);
	    td2.appendChild(text2);
	    tr.appendChild(td1);
	    tr.appendChild(td2);
	        tbody.appendChild(tr);
	}

	document.body.appendChild(table);
	
}
</script>
</head>
<body onload="aaa();">
Name:<%=request.getAttribute( "id1" ) %>
xxxxxxxxxxxxxxx
<h1>aaaaaaaaaa</h1>
<%-- 開發者自己閱讀 --%>
<% 
    //註解
%>    
<!-- 網頁註解 -->

</body>
</html>