<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	　var data = [1,2,3,4]; // the ids coming back from serviceA
	var processItemsDeferred = [];

	for(var i = 0; i < data.length; i++){
	  processItemsDeferred.push(processItem(data[i]));
	}

	$.when.apply($, processItemsDeferred).then(everythingDone); 

	function processItem(data) {
	  var dfd = $.Deferred();
	  console.log('called processItem');

	  //in the real world, this would probably make an AJAX call.
	  setTimeout(function() { dfd.resolve() }, 2000);    

	  return dfd.promise();
	}

	function everythingDone(){
	  console.log('processed all items');
	}
});

</script>	
</head>
<body>

</body>
</html>