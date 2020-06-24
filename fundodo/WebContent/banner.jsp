<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>房多多</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- font-icon -->
    <link rel="stylesheet" href="css/fonts/css/fontello.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slick-theme.css">
    <link rel="stylesheet" href="css/lightcase.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/iframe.css">
    <script src="js/jquery.min.js"></script>
    <!-- <script src="js/jquery.easing.1.3.js"></script> -->
    <script src="js/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/lightcase.js"></script>
    <script src="js/ui.js"></script>
    <script src="js/common.js"></script>
    <script type="text/javascript">
	    $(function(){
			<%
			String userName=(String)request.getAttribute("name");
			if(userName != null){
				session.setAttribute("name", userName);	
			}else{
				userName=(String)session.getAttribute("name");
			}
			%>
			var name = "<%=userName%>";
			changeStatus(name,"banner");
			setFileInfo();
			checkSession();
		});
    </script>
</head>

<body class="page">
	<jsp:include page="/include/header.jsp" flush="true"/>
    <div class="warpper">
        <div class="container-fluid">
            <div class="row flex-xl-nowrap">
             	<jsp:include page="/include/left.jsp" flush="true"/>
				<main class="col-12 col-md-9 col-xl-10 p-0 banner-content">
				<jsp:include page="/include/iframe.jsp" flush="true"/>
				<div id="banner">
                    <div id="bannerPage" class="bannerPage">
                        <div class="slider">
                        <!--<div class="Poster-item">
                                <a href=""><img class="img-fluid" src="images/poster.jpg" alt=""></a>
                            </div>-->
                            <div class="Poster-item">
                                <a href=""><img class="img-fluid" src="images/poster1.jpg" alt=""></a>
                            </div>
                            <div class="Poster-item">
                                <a href=""><img class="img-fluid" src="images/poster2.jpg" alt=""></a>
                            </div>
                            <div class="Poster-item">
                                <a href=""><img class="img-fluid" src="images/poster3.jpg" alt=""></a>
                            </div>
                        </div>

                        <div class="bannerPage_control">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><div id="play_btn" class="btn active"><i class="icon-play-1"></i></div></li>
                                <li class="list-inline-item"><div id="pause_btn" class="btn go"><i class="icon-pause"></i></div></li>
                                <li class="list-inline-item"><div id="left_btn" class="btn"><i class="icon-left-open"></i></div></li>
                                <li class="list-inline-item"><div id="right_btn" class="btn"><i class="icon-right-open"></i></div></li>
                                <li class="list-inline-item"><div id="resizeBig_btn" class="btn"><i class="icon-resize-full"></i></div></li>
                                <li class="list-inline-item"><div id="resizeSmall_btn" class="btn active"><i class="icon-resize-small"></i></div></li>
                            </ul>
                        </div>
                    </div>

                    <br>
                    <div id="text-inner" class="text-inner">
                        <div class="p-4">
                            <div class="mb-4">
                                <img class="img-fluid" src="images/color-logo.png" alt="">
                            </div>
                            <div>
                                房多多是一個站在買方的立場，全方位的買房顧問團隊，以不動產線上數位內容為載體，智慧購屋平台為骨幹，房屋團購為架構，專家諮詢和團隊為後盾，打造一個整合學習、房地產經營新方案，投資房地產不再是有錢人的專利，讓小資族透過學習也能享受不動產自住、包租、買賣的獲利過程，實現財富自由的夢想。
                            </div>
                        </div>
                    </div>
                 </div>
                </main>
            </div>
        </div>
    </div>
    <jsp:include page="/include/footer.jsp" flush="true"/>
    
</body>