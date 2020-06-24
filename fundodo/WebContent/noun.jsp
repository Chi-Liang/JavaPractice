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
			changeStatus(name,"noun");
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
                	<div id="noun" >
                    <div class="title-row">
                        <h2 class="title">房地產常用名詞</h2>
                    </div>
                    <div class="noun-inner">
                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-1.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">何謂定型化契約</h4>
                                <p class="mb-0">依照我國消費者保護法第二條第七款的規定，定型化契約是指「企業經營者為與不特定多數人訂立契約之用而單方預先擬定之契約條款。」「定型化契約」的名稱，學者的說法並不統一，除稱為「定型化契約」外，也有叫做「附合契約」、「標準契約」、「一般契約條款」、「普通契約條款」、「標準契約條款」、「契約標準格式」等。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-2.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">不動產說明書</h4>
                                <p class="mb-0">房仲公司對所銷售之房屋製作的說明書，內容包含謄本、地籍圖、使用分區證明、增值稅、周遭環境等資料之說明。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-3.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">公設比</h4>
                                <p class="mb-0">即公共設施分擔面積除以建坪面積後所得之商數謂之。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-4.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">買賣不破租賃</h4>
                                <p class="mb-0">於租賃期間，出租方將服屋出售給第三者，其租賃契約對買方（新屋主）仍屬有效，不得以契約無效為由要求承租方搬遷。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-5.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">斡旋金</h4>
                                <p class="mb-0">房地產交易由於金額龐大，為確認買方購屋意願並保障買賣雙方權益，仲介公司近年發展出「斡旋金」制度，就是當消費者委託仲介業 者，而出價與屋主願意的價格有所差距時，為顯示買方之誠意，仲介業者通常會要求買方提出一筆「斡旋金」，以便與屋主進行議價。</p>
                            </div>
                        </div>

                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-6.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">要約書</h4>
                                <p class="mb-0">即消費者在委託仲介業者購買房屋時，除了支付斡旋金以外，亦可只簽立要約書給仲介公司而不必支付任何款項，而仲介公司便依據此份要約書和屋主議價。若屋主同意買方之價格及條件後，買賣雙方即正式會面簽定買賣契約。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-7.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">成屋履約保證制度</h4>
                                <p class="mb-0">就是由銀行出面當保證人並出具保證書，將所有買賣雙方的交易款項均需存放在銀行的專戶中(扣除5%(50萬元以內)的訂金可由屋主取走外)，其餘款項需等到交屋當天完成所有手續後再由買賣雙方一手交錢、一手交權狀，以保障買賣雙方買賣價金的安全。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-8.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">所有權狀</h4>
                                <p class="mb-0">係指所有人在法令的限制內。可支配其標的物而且具有彈性及永久性之物權。所有人在法令限制內，得自由地使用、收益、處分其所有物，並排除他人之干涉。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-9.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">容積率</h4>
                                <p class="mb-0">容積率係指地上層建築物總樓地板面積與該建築基地面積之百分比率，而地下室建築面積除了做為停車場及空調設備外，均需計算在內。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-10.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">建蔽率</h4>
                                <p class="mb-0">係指一塊建築基地內，其建築面積與基地面積之比例。</p>
                            </div>
                        </div>

                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-11.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">公共設施</h4>
                                <p class="mb-0">依據公寓大廈管理條例第三款、第四款所規定的「公共使用範圍、與第五款規定的「約定共同範圍」，即所謂的「公共設施範圍」，建坪、實坪：建坪：就是所謂的建築物坪數。實坪：使用面積扣除大公、小公的坪數</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-12.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">使用面積</h4>
                                <p class="mb-0">所有權狀面積包括以下三個部分：(主建物登記：即所謂的室內面積，包括客廳、餐廳、臥室、書房、廚房及衛浴等面積。(附屬建物登記：即所謂的連接主建物室內面積之附屬部分，如陽台、花台等。(公共設施登記：即所謂的建物所有住戶共同使用分攤之部分。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-13.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">贈與稅</h4>
                                <p class="mb-0">「贈與稅」，係指凡經常居住中華民國境內之中華民國國民，就其在中華民國境內或境外之財產贈與者，依贈與稅法課徵贈與稅。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-14.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">遺產稅</h4>
                                <p class="mb-0">遺產稅，係指凡經常居住中華民國境內之中華民國國民死亡時有遺留財產者，應就其在中華民國境內、境外之全部遺產依遺產稅法課徵遺產稅。法課徵遺產稅。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-15.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">契稅</h4>
                                <p class="mb-0">「契稅」，為財產稅與地方稅的一種，係指當建物所有權因發生買賣、贈與、交換或分割等移轉行為及設定典權，或因佔有而取得所有權時，依法需由取得人按契約所載價額，向主管機關申報核課建物契約稅。</p>
                            </div>
                        </div>

                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-16.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">房屋稅</h4>
                                <p class="mb-0">「房屋稅」，係指能增加房屋使用價值的建築改良物均需課徵的財產稅。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-17.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">地價稅</h4>
                                <p class="mb-0">「地價稅」，係指舉凡已規定地價之土地，除已依法課徵田賦稅外，土地所有權人所有之土地均應課徵地價稅。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-18.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">土地增值稅</h4>
                                <p class="mb-0">土地增值稅係我國平均地權制度中獨特的稅制之一，其建立基礎為照價徵稅、照價收買及漲價歸公「地權平均、地利共享」。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-19.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">完稅</h4>
                                <p class="mb-0">係指稅單核發後，即由承辦代書通知買賣雙方，完成稅款繳交，買方並於此時給付第三期款之程序。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-20.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">物之瑕疵擔保責任</h4>
                                <p class="mb-0">係指賣方對其所售出之房屋，負有擔保其權利及屋況無瑕疵及缺失之責任稱之為物之瑕疵擔保責任。</p>
                            </div>
                        </div>

                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-21.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">公告現值</h4>
                                <p class="mb-0">為每一地價等級之平均地價，由各縣市政府公佈，並做為土地所有權人申報地價的依據。目前依規定公告地價每三年應調整一次，以為徵收地價稅之依據，地價公告該年，即以公告地價為公告現值。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-22.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">公告地價</h4>
                                <p class="mb-0">公告地價是課徵地價稅的基本依據，其方式是每一地價等級之平均地價，經由縣市政府公佈以作為所有權人申報地價之依據，而地價申報與地段之調幅則往往甚為驚人，因此地價稅之負擔也較大。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-23.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">預告登記</h4>
                                <p class="mb-0">係指預為保全對於他人土地權利得、喪、變更登記之請求權，經登記名義人同意所為之限制登記。其目的在防止登記名義人對其土地權利為妨害保全請求權所為之處分，以保全請求權人之權益。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-24.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">保存登記</h4>
                                <p class="mb-0">即新建或舊有之合法建物，尚未辦理所權登記，由所有人第一次向地政機關申辦之所有權登記，一般人有時稱為建物所有權第一次登記。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-25.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">他項權利登記</h4>
                                <p class="mb-0">他項權利，為土地、建物所有權以外之財產權。包括地上權，永佃權、地役權、抵押權、典權以及土地法第一百三十三條規定之耕作權。至於他項權利証明書，則為權利人享有他項權利之憑証。</p>
                            </div>
                        </div>

                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-26.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">地上權</h4>
                                <p class="mb-0">乃在他人土地上有建築物、其他工作物或竹木為目的，而使用其土地之權利；其作用在使無土地之地上權人得利用土地所有權人之土地，建築房屋、工作物或培植竹木，以調濟「權」與「用」之關係，使土地能發揮最大功用。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-27.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">優先購買權</h4>
                                <p class="mb-0">依土地法或其他法律規定，於所有權人將其土地或建物之所有權出售與他人時，特定之人有按同一條件（價格）優先購買之權利。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-28.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">法定抵押權</h4>
                                <p class="mb-0">依法律規定當然發生之抵押權，此抵押權無須經當事人之意思表示，且不經登記即可成立，有別於一般物權非經登記不生效力之規定。目前我國依法律規定而發生之抵押權計有二種，即承攬人之法定抵押權及國民住宅貸款之第一順位法定抵押權。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-29.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">不定期租賃</h4>
                                <p class="mb-0">租賃係指當事人約定，一方以物租與他方使用收益，他方支付租金的契約，租賃契約未定有期限者稱為不定期租賃。而在不定期租賃之情況下，出租人常有難收回出租物的困擾。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-30.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">抵費地</h4>
                                <p class="mb-0">即土地重劃時，所有權人用以扣抵其原應負擔工程費用之部分土地，謂之抵費地。</p>
                            </div>
                        </div>

                        <div class="row no-gutters mt-4 mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-31.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">土地使用分區</h4>
                                <p class="mb-0">其意義就是將都市境內的土地適當的劃分區域，規定各個區域的使用。換言之，土地使用分區管制，也就是以合理的規定都市分區，指導其分區使用，以限制私有的土地及地上建築物的不合理發展，使都市成為良好住居所在，及為一個更有效率的工作所在之意。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-32.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">區分所有建物</h4>
                                <p class="mb-0">即數人就一棟建物區分為若干部分，無論其為分層或分區，區分所有人得就各區分部份，申請單獨編訂建號辦理登記，取得各該區分</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-33.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">非都市土地</h4>
                                <p class="mb-0">依都市計畫法施行細則之規定，非都市土地即為都市土地以外之土地。 非土地土地計有八種分區，即（1）特種農業區、（2）一般農業區、（3）工業區、（4）鄉村區、（5）森林區、（6）山坡地保護區、（7）風景區、（8）其他使用區或專業區。</p>
                            </div>
                        </div>
                        <div class="row no-gutters mb-5 align-items-md-center">
                            <div class="col-2 col-md-1">
                                <img class="img-fluid" src="images/name-34.png" alt="">
                            </div>
                            <div class="col-10 col-md-11 pl-4">
                                <h4 class="h6">即成巷路</h4>
                                <p class="mb-0">台北市稱「現有巷道」高雄市稱「現有巷路」，其認定標準：（一）不包括防火巷、類似道路、私設通路（巷道）。<br>（二）供公眾使用。<br>（三）寬度：至計畫道路寬度，內政部規定至少二公尺，台北市及高雄市均為三點五公尺。<br>（四）巷旁房屋編有門牌。高市規定應有二戶以上。<br>（五）不妨害都市計畫之公共保留地者。但台北市無此規定。</p>
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