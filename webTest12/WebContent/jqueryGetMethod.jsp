<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
	  $.ajax({
	        url: 'CServlet?aaa=111&bbb=222,333,444',
	        type: 'get',
	        success: function (response) {
	            result = true;
	            alert("success");
	        }
	    });
  });
});
</script>
<title>Insert title here</title>
</head>
<body>
<button>Send an HTTP POST request to a page and get the result back</button>
</body>
</html>