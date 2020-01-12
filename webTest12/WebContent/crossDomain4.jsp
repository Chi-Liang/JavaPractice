<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <style>
  img {
    height: 100px;
    float: left;
  }
  </style>
<script>
$(function() {
    var flickerAPI = "https://aaapi.flickr.com/services/feeds/photos_public.gne?tags=kitten&format=json";
    var result_message = "";
    
        $.ajax({
               url: flickerAPI,
               type: 'GET',
               dataType: "jsonp",
               jsonp:"jsoncallback",
               jsonpCallback:"aaaa",
               success: function (data,textStatus,jqXHR) {
                  console.log(data);
                  
                      $.each(data.items, function(i, item) {
                        $("<img>").attr("src", item.media.m).appendTo("#images");
                        if (i === 3) {
                            return false;
                        }
                    }); 
                    result_message = textStatus;
                },
                error:function(jqXHR){
                	if(jqXHR.status==404){
                		result_message = "url error";
                	}
                },
                complete:function(){
                	alert(result_message);
                }
                
           });

    });
</script>  
</head>
<body>
<div id="images"></div>
</body>
</html>