<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#get").click(function(){
        $.ajax({
            type :"GET",
            url  : "AServlet",
       //   dataType: "json",
            data : { 
                id : "99",                            
            }, 
        //    dataType: "text",
            success : function(data) {
                console.log(data);                           
        	}
        })
    });
    
    $("#post").click(function(){
         $.ajax({
            type :"POST",
            url  : "/RestfulTest/rest/hello/'222'/pos",
            data : { 
                id : "999999",                            
            }, 
        //    dataType: "text",
            success : function(data) {
                console.log(data);                           
        	}
        }) 
    });
    
    $("#put").click(function(){
        $.ajax({
           type :"PUT",
           url  : "/RestfulTest/rest/hello/posPut",
           data : { 
               id : "999999",                            
           }, 
       //    dataType: "text",
           success : function(data) {
               console.log(data);                           
       	}
       }) 
   });
    
    $("#delete").click(function(){
        $.ajax({
           type :"DELETE",
           url  : "/RestfulTest/rest/hello/posDelete",
           data : { 
               id : "999999",                            
           }, 
       //    dataType: "text",
           success : function(data) {
               console.log(data);                           
       	}
       }) 
   }); 
    
});
</script>
<title>Insert title here</title>
</head>
<body>
<button id="get">GET</button>
<button id="post">POST</button>
<button id="put">PUT</button>
<button id="delete">DELETE</button>
</body>
</html>