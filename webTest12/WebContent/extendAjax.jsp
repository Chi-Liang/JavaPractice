<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/lib.js"></script>
<title>Insert title here</title>
<script type="text/javascript">

$(document).ready(function(){
      $.getAjax('CServlet?aaa=111&bbb=222,333,444');
      
      var data1 = {
    	  firstName:"John",	  
    	  lastName:"Doe",	  
    	  age:50,	  
    	  eyeColor:"blue"	  
      };
      
      $.postAjax('CServlet',data1);
});
</script>
</head>
<body>

</body>
</html>