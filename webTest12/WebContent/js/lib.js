$.extend({
	add:function(a,b){
		var c = a+b;
		return c;
	},
	minus:function(a,b){
		var c = a-b;
		return c;
	},
	mul:function(a,b){
		var c = a*b;
		return c;
	},
	div:function(a,b){
		var c = a/b;
		return c;
	}
});

$.extend({
	ccc:function(sum){
		alert(sum);
	}
});

$.extend({
	getAjax:function(url1){
		$.ajax({
	        url: url1,
	        type: 'get',
	        success: function (response) {
	            alert(response);
	        }
	   });
   },

	postAjax:function(url1,data1){
	    $.ajax({
	        url: url1,
	        type: 'post',
	        data:data1,
	        success: function (response) {
	            alert(response);
	       }
	    });
	 }
});







