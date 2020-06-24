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

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/iframe.css">
    <script src="js/jquery.min.js"></script>
    <!-- <script src="js/jquery.easing.1.3.js"></script> -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/common.js"></script>
    <script type="text/javascript">
	    $(function(){
			
			<%
			String userName=(String)session.getAttribute("name");
			%>
			var name = "<%=userName%>";
			changeStatus(name,"contact");
			setFileInfo();
			checkSession();
		});
	    
</script>	    
</head>

<body class="page privacy">
   	<jsp:include page="/include/header.jsp" flush="true"/>
    <div class="warpper">
        <div class="container-fluid">
            <div class="row flex-xl-nowrap">
                <jsp:include page="/include/left.jsp" flush="true"/>
                <main class="col-12 col-md-10 p-md-4 bd-content page-content">
                <jsp:include page="/include/iframe.jsp" flush="true"/>
                <div id="contact" >
                    <div class="title-row">
                        <h2 class="title">聯絡我們</h2>
                    </div>
                    <p>房多多是一個站在買方的立場，全方位的買房顧問團隊，以不動產線上數位內容為載體，智慧購屋平台為骨幹，房屋團購為架構，專家諮詢和團隊為後盾，打造一個 整合學習、房地產經營新方案，投資房地產不再是有錢人的專利，讓小資族透過學習也能享受不動產自住、包租、買賣的獲利過程，實現財富自由的夢想。</p>
                    
                    <ul class="list-unstyled contact-text">
                        <li>地址：<a href="https://goo.gl/maps/2DTztQhQWytYSuTF7" target="_blank" rel="noopener">高雄市前鎮區一心一路243號10樓</a> </li>
                        <li>電話：<a href="tel:07-3310277 " target="_blank" rel="noopener">07-3310277 </a> </li>
                        <li>傳真：07-3310217 </li>
                        <li>Mail：<a href="mailto:fundodo1314@gmail.com " target="_blank" rel="noopener">fundodo1314@gmail.com </a> </li>
                    </ul>

                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3683.205181613886!2d120.31361831548352!3d22.608811937336974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346e036141881509%3A0x2a23f2fc4118c76d!2zODA26auY6ZuE5biC5YmN6Y6u5Y2A5LiA5b-D5LiA6LevMjQzLTHomZ8xMA!5e0!3m2!1szh-TW!2stw!4v1585793270159!5m2!1szh-TW!2stw" frameborder="0" style="border:0;width: 100%;height: 60vh;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                   </div> 
                </main>
            </div>
        </div>
    </div>

    <jsp:include page="/include/footer.jsp" flush="true"/>
   
</body>
</html>