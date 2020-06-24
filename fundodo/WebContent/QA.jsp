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
			changeStatus(name,"QA");
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
                <div id="QA" >
                    <div class="title-row">
                        <h2 class="title">房地合一Q&A</h2>
                    </div>
                    <div class="note-text mb-4">
                        <p>房地合一實價課稅於105年1月1日起正式上路。若在此之前取得，且持有超過兩年之房地產，無論何時賣出仍適用舊制。但若是105年1月1日後才取得的房地產，或出售持有未滿二年的房地產，即適用房地合一稅。 <br><br>
                            房地合一實施後，房子及土地合併實價課稅，買賣房屋的資本利得(獲利)若為1000萬的話，獲利的1000萬元需全額繳交房地合一稅。另外，財政部希望透過房地合一實價課稅，達到抑止投資客炒作，以健全房市發展。因此持有的時間越長，繳交的稅越少。
                            </p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ１．房地合一新制除原始取得成本，哪些支出也可列入房屋、土地的成本？</h4>
                        <p>Ａ：1.購入房屋、土地達可供使用狀態前支付的必要費用，如契稅、印花稅、代書費、規費、公證費、仲介費等。 <br>&emsp;&emsp;2.取得房屋後，於使用期間支付能增加房屋價值或效能且非2年內所能耗竭的增置、改良或修繕費。</p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ２．房地合一新制得減除的取得、改良及移轉費用有哪些？</h4>
                        <p>Ａ：包括交易房屋、土地所支付的必要費用，如仲介費、廣告費、清潔費、搬運費等。 但不包括依土地稅法規定繳納的土地增值稅及個人取得房屋、土地所有權後，所繳納的房屋稅、地價稅、管理費、清潔費、金融機構借款利息等，係屬使用期間的相對代價，不得列為費用減除。</p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ３．房地合一稅要如何申報繳納呢？</h4>
                        <p>Ａ：新制下，個人房屋、土地交易所得係採分離申報納稅，個人應於房屋、土地完成所有權移轉登記日的次日起算30日內自行依規定格式填寫申報書，如有應納稅額，應先繳納後再檢附繳款收據併同契約書影本及其他有關文件，向國稅局辦理申報。該筆交易所得毋須再併入交易年度綜合所得總額辦理申報。</p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ４．如果未依規定申報或未誠實申報房地合一稅會有罰則嗎？</h4>
                        <p>Ａ：未依規定申報：處新臺幣3,000元以上30,000元以下罰鍰，如有應補稅額，除依法核定應補稅額發單補徵外，並按所漏稅額處3倍以下罰鍰，惟前開兩項罰鍰得擇一從重處罰。 未誠實申報：除依法核定應補稅額發單補徵外，並按所漏稅額處2倍以下罰鍰。</p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ５．我要申報房地合一稅，但成本、費用證明文件遺失無法提供國稅局，該怎麼辦呢？</h4>
                        <p>Ａ：國稅局將依查得資料核定原始取得成本，如無法查得成本資料，得依原始取得時房屋評定現值及公告土地現值按政府發布的消費者物價指數調整後，核定其成本。 個人交易房屋、土地，應提示所支付取得、改良及移轉費用的證明文件供國稅局核認減除，未提示上開費用證明文件或所提示費用證明金額未達成交價額5%者，國稅局得按成交價額5%計算得減除的費用總額。</p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ６．一買一賣若分別為財產交易所得稅、房地合一稅兩種不同稅制，我可以選擇適用房地合一重購退稅優惠嗎？</h4>
                        <p>Ａ：一買一賣皆為房地合一稅新制，才可適用房地合一重購退稅優惠。</p>
                    </div>
                    <div class="note-text mb-4">
                        <h4 class="h6">Ｑ７．我沒有賺錢也要申報房地合一稅嗎？</h4>
                        <p>Ａ：個人交易房屋、土地，如課稅所得為0、為虧損情形或適用自住房地免稅優惠經計算後不用繳稅者，仍應於房屋、土地完成所有權移轉登記日的次日或房屋使用權交易日的次日起算30日內自行填具申報書，檢附契約書影本及其他有關文件，向該管國稅局辦理申報。</p>
                    </div>
                   </div> 
                </main>
            </div>
        </div>
    </div>

    <jsp:include page="/include/footer.jsp" flush="true"/>
   
</body>
</html>