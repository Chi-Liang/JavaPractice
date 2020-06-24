function changeStatus(name,page){
			
	$.ajax({
            type :"GET",
            url  : "https://app.hanye.com.tw/pl-admin/api/category/list",
            async : false,
       		data : { 
       			mid : name
	        }, 
            success : function(data) {
            	data = data.sort(function (a, b) {
            		 return a.cid > b.cid ? 1 : -1;
            	});
				$.each(data, function(key, obj) {
            		var appendCategory = "<li><a href='#' onclick=searchVideo("+ obj.cid +",'" + page + "');  class='page-nav-item'> <i class='icon-video icon'></i> " + obj.name + "</a></li>";						
            		$("#pageNav").append(appendCategory);
	            });
					
        	},
        	error : function(xhr,ajaxOption,error) {
        		alert(xhr.responseText);
        	}
        }) 
}

function setFileInfo(){
	$("#fileDownload").css('display','none');	
 	$("#fileDownload").on('click', function() {
        	 		
    	if($("#fileUrl").text() != "" && $("#fileUrl").text() != undefined){
    		window.open($("#fileUrl").text(),"_blank");
 		}else{
       		alert("請選擇影片");
       	}
 	}); 
}

function searchVideo(objCid,page){
	$.ajax({
        type :"GET",
        url  : "https://app.hanye.com.tw/pl-admin/api/video/list",
        async : false,
   		data : { 
   			cid : objCid
        }, 
        success : function(data) {
        	successStatus(data);
        	$("#"+ page).css('display','none');
    	},
    	error : function(xhr,ajaxOption,error) {
    		alert(xhr.responseText);
    	}
    }) 
}

function successStatus(data){
	
	$("#videoPlayer,#subtitle,#title,#description,#videoInfo").css('display','block');
	$("#videoPlayer")[0].src = data.videoUrl;
	$("#title").text(data.title);
	$("#subtitle").text(data.subtitle);
	$("#description").text(data.description);
	$("#fileDownload").css('display','none');
	if(data.fileUrl != "" && data.fileUrl != undefined){
			$("#fileDownload").css('display','block');
			$("#fileUrl").text(data.fileUrl);
	}
}

function checkSession(){
 var checkSession = setInterval(function() {
			$.ajax({
		        type :"GET",
		        url  : "/fundodo/SessionServlet",
		        async : false,
		        success : function(data) {
		        	var obj = JSON.parse(data);
		        	if(obj.result == "Y"){
		        		console.log("session valid");
		        	}else if(obj.result == "N"){
		        		clearInterval(checkSession);
		        		alert("session timeout 請重新登入");
		        		window.location.href = "/fundodo/index.html";
		        	}
		        	
		    	},
		    	error : function(xhr,ajaxOption,error) {
		    		alert(xhr.responseText);
		    	}
			}) 
		}, 1000 * 100)
}

function invalidateSession(){
		$.ajax({
	        type :"POST",
	        url  : "/fundodo/SessionServlet",
	        async : false,
	        success : function(data) {
	        	console.log(data);
	        	
	    	},
	    	error : function(xhr,ajaxOption,error) {
	    		alert(xhr.responseText);
	    	}
		}) 
}

