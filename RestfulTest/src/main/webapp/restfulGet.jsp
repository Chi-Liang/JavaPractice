<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  /*   $("#get").click(function(){
        $.ajax({
            type :"GET",
            url  : "/RestfulTest/rest/hello/sub",
            dataType: "json",
            data : { 
                id : "99",                            
            }, 
        //    dataType: "text",
            success : function(data) {
                console.log(data);                           
        	}
        })
    }); */
    
    $("#post").click(function(){
         $.ajax({
            type :"POST",
            url  : "/RestfulTest/rest/hello/'222'/sub",
            data : { 
                id : "33333333",                            
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
           url  : "/RestfulTest/rest/hello/sub",
           data : { 
               id : "2222222",                            
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
           url  : "/RestfulTest/rest/hello/sub",
           data : { 
               id : "1111111",                            
           }, 
       //    dataType: "text",
           success : function(data) {
               console.log(data);                           
       	}
       }) 
   }); 
    
    $("#get").click(function(){   
		   var xhttp = new XMLHttpRequest();
		   xhttp.onreadystatechange = function() {
		     if (this.readyState == 4 && this.status == 200) {
		       document.getElementById("demo").innerHTML =
		       this.responseText;
		     }
		   };
		   xhttp.open("GET", "/RestfulTest/rest/hello/sub?policyNo=123", true);
		   xhttp.send();
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