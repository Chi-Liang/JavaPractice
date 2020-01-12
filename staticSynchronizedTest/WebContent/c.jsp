<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<script type="text/javascript">
function ccc(){
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	    // alert(this.responseText);
	    }
	  };
	  xhttp.open("GET", "SynchronizedServlet?action=c", true);
	  xhttp.send();
	
}
</script>
</head>
<body>
<button onclick="ccc();">click me</button>
</body>
</html>