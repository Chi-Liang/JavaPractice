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
			changeStatus(name,"about");
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
                <main class="col-12 col-md-10 p-md-4 bd-content page-content" >
                <jsp:include page="/include/iframe.jsp" flush="true"/>
                <div id="about" >
                    <div class="title-row">
                        <h2 class="title">關於房多多不動產智慧平台</h2>
                    </div>
                    <p>房多多是一個站在買方的立場，全方位的買房顧問團隊，以不動產線上數位內容為載體，智慧購屋平台為骨幹，房屋團購為架構，專家諮詢和團隊為後盾，打造一個整合學習、房地產經營新方案，投資房地產不再是有錢人的專利，讓小資族透過學習也能享受不動產自住、包租、買賣的獲利過程，實現財富自由的夢想。</p>
                    
                    <div class="about-inner mt-5">
                        <div class="block">
                            <div class="row mb-5 align-items-center ">
                                <div class="col-12 col-md-6">
                                    <h4 class="h5">房多多使命：</h4>
                                    <p>讓人們便捷獲取房地產知識，用科技讓複雜的房地產更簡單。</p>
                                </div>
                                <div class="col-12 col-md-6 text-center text-md-left">
                                    <img src="images/about-pic_1.png" alt="">
                                </div>
                            </div>
                            <div class="row mb-5 align-items-center ">
                                <div class="col-12 col-md-6 order-md-2">
                                    <h4 class="h5">房多多願景：</h4>
                                    <p>以創新精神，專業的團隊，提供一條龍房地產服務，成為新房地產科技第一品牌。</p>
                                </div>
                                <div class="col-12 col-md-6 order-md-1 text-center text-md-right">
                                    <img src="images/about-pic_2.png" alt="">
                                </div>
                            </div>
                            <div class="row mb-5 align-items-center ">
                                <div class="col-12 col-md-6 text-center text-md-left">
                                    <h4 class="h5">房多多理念：</h4>
                                    <ul class="pl-4 text-left">
                                        <li>強調前瞻性與團隊精神的工作隊伍。</li>
                                        <li>融合傳統經驗、最新頂尖科技及對市場的敏銳觸角。</li>
                                        <li>建立知識團隊共享與奮鬥力求進的品牌文化。</li>
                                    </ul>
                                </div>
                                <div class="col-12 col-md-6 text-center text-md-left">
                                    <img src="images/about-pic_3.png" alt="">
                                </div>
                            </div>
                        </div>

                        <br>
                        <div class="block mt-2 text-center">
                            <h4 class="h5 text-center ">房多多價值觀</h4>
                            <div class="row mt-4 justify-content-center">
                                <div class="col-4 col-sm-3 col-md p-3 p-md-0">
                                    <span class="icon d-block d-md-inline-block mr-md-2">
                                        <img src="images/about-icon_1.png" alt="">
                                    </span>
                                    <span>精益求精</span>
                                </div>
                                <div class="col-4 col-sm-3 col-md p-3 p-md-0">
                                    <span class="icon d-block d-md-inline-block mr-md-2">
                                        <img src="images/about-icon_2.png" alt="">
                                    </span>
                                    <span>誠信為本</span>
                                </div>
                                <div class="col-4 col-sm-3 col-md p-3 p-md-0">
                                    <span class="icon d-block d-md-inline-block mr-md-2">
                                        <img src="images/about-icon_3.png" alt="">
                                    </span>
                                    <span>學習成長</span>
                                </div>
                                <div class="col-4 col-sm-3 col-md p-3 p-md-0">
                                    <span class="icon d-block d-md-inline-block mr-md-2">
                                        <img src="images/about-icon_4.png" alt="">
                                    </span>
                                    <span>變革創新</span>
                                </div>
                                <div class="col-4 col-sm-3 col-md p-3 p-md-0">
                                    <span class="icon d-block d-md-inline-block mr-md-2">
                                        <img src="images/about-icon_5.png" alt="">
                                    </span>
                                    <span>專業承諾</span>
                                </div>
                            </div>
                        </div>

                        <br>
                        <div class="block mt-5">
                            <h4 class="h5 text-center">核心價值</h4>
                            <div class="row mt-4">
                                <div class="col-12 col-md-6">
                                    <div class="row align-items-center my-3">
                                        <span class="col-3 col-md-2">
                                            <img src="images/about-num_1.png" alt="">
                                        </span>
                                        <div class="col-9 col-md-10">
                                            <h5 class="h6">團隊精神</h5>
                                            <p class="mb-0">以團結一心的態度，實現房多多與您共同目標。</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="row align-items-center my-3">
                                        <span class="col-3 col-md-2">
                                            <img src="images/about-num_2.png" alt="">
                                        </span>
                                        <div class="col-9 col-md-10">
                                            <h5 class="h6">正直</h5>
                                            <p class="mb-0">秉承高標準的誠信、道德操守的治理。</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="row align-items-center my-3">
                                        <span class="col-3 col-md-2">
                                            <img src="images/about-num_3.png" alt="">
                                        </span>
                                        <div class="col-9 col-md-10">
                                            <h5 class="h6">卓越</h5>
                                            <p class="mb-0">保持創新和進取的精神，追求卓越。</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="row align-items-center my-3">
                                        <span class="col-3 col-md-2">
                                            <img src="images/about-num_4.png" alt="">
                                        </span>
                                        <div class="col-9 col-md-10">
                                            <h5 class="h6">可持續性</h5>
                                            <p class="mb-0">我們對社會、環境和經濟負責，並以最尊敬的心對待我們的利益相關者。</p>
                                        </div>
                                    </div>
                                </div>
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
</html>