<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="jto" class="webTest6.Jto" scope="request"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aaa(){
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	//      var response = this.responseXML;	
	//      var size = response.getElementsByTagName("author").length;
	//      var html1 = "";
	 //     for (var i = 0; i < size; i++) {
	//		var title = response.getElementsByTagName("author")[i].innerHTML;
	//		html1 += title+"</br>" 
	//	}
	      document.getElementById("demo").innerHTML = this.responseText;
	     
	    }
	  };
	  xhttp.open("GET", "http://localhost:8080/webTest6/XmaSample?action=aaa", true);
	  xhttp.send();
}
</script>
</head>
<body onload="aaa();">
<p>el</p>
<p>第一xml的名字: ${jto.userName}</p>
<p>第二xml的價格: ${jto.price}</p>

<p>jsp</p>
<%=jto.getUserName()%></p>
<%=jto.getPrice()%></p>

<div id="demo"></div>
</body>
</html>