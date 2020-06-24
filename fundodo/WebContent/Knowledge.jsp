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
			changeStatus(name,"Knowledge");
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
                <div id="Knowledge" >
                    <div class="title-row">
                        <h2 class="title">房地產知識</h2>
                    </div>
                    <div class="note-text mb-4">
                   	 擁有自己的家，是大多數人都想要達成的願望，但購屋的金額如此龐大，如何規畫及準備，透過本單元希望提供購屋者一些知識，協助您一步一步達成此夢想。 
                    </div>
                    <h3 class="h5">購屋資金準備</h3>
                    <p>資金計劃是購屋前重要工作之一，周詳的計劃不但能將財力作最有效的運用，同時，也可以避免購屋之後，為償還貸款而擔憂。</p>
                    <br>
                    <h4 class="h5">一、自備款的準備</h4>
                    <p>目前自備款約占不動產總價款之30%左右，擬定好自己的購屋目標及資金來源計劃表後，開源節流累積資金，只要本身信用狀況良好，您所購的房屋本身條件、座落地點不是太差，一般銀行至少均可貸到70%~80%。</p>
                    <br>
                    <h4 class="h5">二、房貸種類</h4>
                    <p>指標利率訂價模式的房貸產品，稱為「指數型房貸」。「傳統房貸」則是以基本放款利率再加碼。 此兩種房貸最大的差別是利率計算基礎不同，指數型房貸多以存款利率或貨幣市場的指標利率為基礎再加碼。</p>
                    <br>
                    <h4 class="h5">三、貸款償還方式</h4>
                    <b class="h6">方式一：本息定額攤還法</b>
                    <p>將所貸的本金及貸款利息平分攤至每一期繳付，所以每期所繳金額均相同；這種還款方式較穩定，資金較易安排及調度。</p>
                    <b class="h6">方式二：本金平均攤還法</b>
                    <p>將所貸本金平均攤至每一期償付，所以每期所償付之本金均相同，但利息則每期不同。利息之計算係以尚未償之金額計算，這種償付方式雖然初期負擔較重，但每期遞減，愈繳愈少，是一種相當公平合理的方式。</p>
                    <br>
                    <h4 class="h5">四、購屋後安全的財務結構</h4>
                    <p>（一）資產／負債：表示每元的負債有多少資產可抵償。（應大於1，而資產是您所擁有的動產與不動產之總和）。</p>
                    <p>（二）金融性資產／負債：表示資產變現能力之強弱；比值愈大應付突發事件的能力愈強。（金融性資產指變現力強的動產如；有價債券、現金、股票、黃金等）。</p>
                    <p>（三）淨值／資產：表示資產中有多少是屬於自己的，比值大，自有率愈高。（資產減負債後的餘額為淨值）。</p>
                    <p>雖然，對一般薪水階級的購屋者而言，總覺得存錢速度怎麼好像永遠都跟不上房價的增值，然而，只要能儘早開始良好的資金規劃，購屋後，也不致影響原來的生活水準，同時住得安心，更可以享受不動產增值的利益，累積自己的財富。</p>
                  </div> 
                </main>
            </div>
        </div>
    </div>

    <jsp:include page="/include/footer.jsp" flush="true"/>
   
</body>
</html>