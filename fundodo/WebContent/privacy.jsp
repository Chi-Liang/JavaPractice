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
    <link rel="stylesheet" href="css/fonts/font/fontello.woff">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/iframe.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/common.js"></script>
    <script type="text/javascript">
	    $(function(){
			
			<%
			String userName=(String)session.getAttribute("name");
			%>
			var name = "<%=userName%>";
			changeStatus(name,"privacy");
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
                <div id="privacy" >
                    <div class="title-row">
                        <h2 class="title">隱私權政策</h2>
                    </div>
                    <p> 本網站非常重視本網站每位使用者的隱私權並且給予最高限度保障，為了讓每位使用者清楚地了解到本網站對於所蒐集到的個人資料及使用的情形，請使用者詳讀以下本網站所聲明之隱私權政策。<br>
                        <br>
本網站謹遵循「個人資料保護法」之規範，合理蒐集使用者之資訊並利用，以保障使用者個人資料之安全。
依「個人資料保護法」第8條之規定，本網站將告知使用者以下事項：
本隱私權政策適用對象範圍包括因使用本網站、接受本網站所提供的服務、申請加入本網站會員，而提供本網站個人資料者。
本網頁係好市多多有限公司所有。
本網站所蒐集之資料係依好市多多有限公司與提供使用者之契約目的，履行對於使用者之契約義務並進行客戶管理及服務。本網站藉由使用者加入會員或進行交易之過程蒐集資料。
本網站所蒐集的個人資料內容包括：使用者之姓名、性別、生日、地址、電話、電子郵件、信用卡或金融機構帳戶資訊。
本網站蒐集個人資料所使用的期間為使用者加入後，至其要求停止接受本網站服務為止。
本網站所蒐集到之個人資料可能使用於全球各地區。
本網站所蒐集到之個人資料將使用於履行契約時所必要提供之對象及方式。例如客戶於本網站刷卡消費後，將提供消費記錄予金融機構進行扣款；客戶確定參與課程後，將提供可辨識個人之資訊予授課者或其團隊。
<br>
<br>
依「個人資料保護法」第3條之規定，本網站所蒐集個人資料之當事人得請求本網站提供其：
查詢或請求閱覽；
請求製給複製本；
請求補充或更正；
請求停止蒐集、處理或利用；
請求刪除。
個人資料之保護：
本網站會採取預防措施保護使用者的個人資料，避免遭盜用、濫用或任何未經許可之變更、揭露、存取刪除。
第三人揭露：
除有下列情形，本網站不會提供使用者之個人資料予其他人或法人：
一、徵得使用者之事先同意；
二、基於契約約定之使用目的；
三、基於法令規定。
隱私權政策之變更：
本網站的隱私權政策可能因為提供服務變更、法令變更或其他可能產生本網站資訊蒐集影響之情形，修改本隱私權政策。本隱私權政策變更時，會同時於本網站公布，以供使用者隨時閱覽。</p>
					</div>
                </main>
            </div>
        </div>
    </div>

    <jsp:include page="/include/footer.jsp" flush="true"/>
   
</body>
</html>