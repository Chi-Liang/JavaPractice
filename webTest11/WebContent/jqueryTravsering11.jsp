<!DOCTYPE html>
<html>
<head>
<style>
.siblings * { 
  display: block;
  border: 2px solid lightgrey;
  color: lightgrey;
  padding: 5px;
  margin: 15px;
}

.aaa{
	color: red;
	border:2px solid red;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
var id1 = "p2";

$(document).ready(function(){
	
	$("#p2").addClass("aaa");
	
	$("#btn1,#btn2").click(function(){
		
		var a = this.getAttribute("id");
        if (a == "btn1" && id1 != "p1") {
			$("#" + id1).prev().addClass("aaa");
			$("#" + id1).removeClass("aaa");
			id1 = $("#" + id1).prev()[0].id;
		} else if (a == "btn2" && id1 != "p2") {
			$("#" + id1).next().addClass("aaa");
			$("#" + id1).removeClass("aaa");
			id1 = $("#" + id1).next()[0].id;
		}
	});
});
</script>
</head>
<body class="siblings">

<div>div (parent)
  <p id="p1">p</p>
  <span id="s1">span</span>
  <h2 id="h2">h2</h2>
  <h3 id="h3">h3</h3>
  <h4 id="h4">h4</h4>
  <h5 id="h5">h5</h5>
  <h6 id="h6">h6</h6>
  <p id="p2">p</p>
</div>
<button id="btn1">one</button>
<button id="btn2">two</button>
</body>
</html>
