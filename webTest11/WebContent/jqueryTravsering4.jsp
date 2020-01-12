<!DOCTYPE html>
<html>
<head>
<style>
.descendants * { 
  display: block;
  border: 2px solid lightgrey;
  color: lightgrey;
  padding: 5px;
  margin: 15px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("div").children("p.first").css({"color": "red", "border": "2px solid red"});
});
</script>
</head>
<body>

<div class="descendants" style="width:500px;">div (current element) 
  <p class="first">p (child)
    <span>span (grandchild)</span>   
  </p>
  <p class="second">p (child)
    <span>span (grandchild)</span>
  </p> 
</div>

</body>
</html>
