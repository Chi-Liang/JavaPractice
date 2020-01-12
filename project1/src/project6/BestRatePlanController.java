package com.tstar.portal.inbound;

import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

import com.tstar.portal.core.service.BillService;
import com.tstar.portal.core.service.SSOSupportService;
import com.tstar.portal.core.service.sso.UserProfileBean;
import com.tstar.portal.outbound.cms.bil.WsRPlan;
import com.tstar.portal.outbound.cms.bil.WsRateSumdata;
import com.tstar.portal.outbound.cms.xws.WsRatePlanDetail;

/**
 * 
 * @author PhilipsPeng
 * @version 2015/2/11
 * @note : 最適資費試算
 */
@Component
@Path("/bestRatePlan") 
public class BestRatePlanController {
	private Logger log = LoggerFactory.getLogger(this.getClass());
	private final String SERVICE_CODE ="BEST_RATE_PLAN";  
	private final String type_4G_notOpen="<font color='#0098CA'>4G月租型客戶尚未開放此功能</font>";
	
	
	@Autowired
	private MessageSource messageSource;
	
	@Autowired
	@Qualifier("billServiceImpl")
	private BillService bilService;

	@Autowired
	@Qualifier("SSOSupportServiceImpl")
	public SSOSupportService SSOSupportService;

	@Context
	private HttpServletRequest req;
	
	@Value("${product_type_3G_prepay}")
	private String product_type_3G_prepay;
	
	@Value("${product_type_4G_prepay}")
	private String product_type_4G_prepay;
	
	@Value("${product_type_4G_postpay}")
	private String product_type_4G_postpay;

	private Map<String,Object> checkA(UserProfileBean profileBean){
		// STEP:1.檢查是否登入有UserProfileBean
		Map<String,Object> returnMap = new HashMap<String,Object>();
		if (profileBean == null) {
			returnMap.put("message", xws_error_message);
			return returnMap;
		}
	}
	
	private Map<String,Object> checkB(List<WsRPlan> rPlan ,List<WsRateSumdata> rateSumdata){
     // 沒有帳單記錄時顯示訊息
        	    if(rPlan.size()==0  && rateSumdata.size()==0){
        		    returnMap.put("notFindmessage", billrecheck_no_record);
        		    
        		    return returnMap;
        	      }		
	}

	@SuppressWarnings({ "unchecked" })
	@GET
	@Path("/default")
	@Produces(APPLICATION_JSON + "; charset=UTF-8")
	public Map<String, Object> getDefault() {
		String xws_error_message = messageSource.getMessage("xws_error_message", null, Locale.TAIWAN);
		String prepaid_no_service_message = messageSource.getMessage("prepaid_no_service_message", null, Locale.TAIWAN);
		String error_message = messageSource.getMessage("error_message", null, Locale.TAIWAN);
		
		String billrecheck_no_record = messageSource.getMessage("billrecheck_no_record", null, Locale.TAIWAN);
		
		Map<String, Object> returnMap = new HashMap<>();
		
		UserProfileBean profileBean = SSOSupportService.getProfile(req);
		this.checkA(profileBean);

		String ProductType = profileBean.getCustomerProfile().getPRODUCTTYPE();
		
		// STEP:2.檢查是否check3G4G,若是無法查詢
//		List<String> check3G4G = new ArrayList<String>();
//		check3G4G.add(ProductType);
//		check3G4G.add(product_type_3G_prepay);
//		check3G4G.add(product_type_4G_prepay);
//		check3G4G.add(prepaid_no_service_message);
//		check3G4G.add(product_type_4G_postpay);
//		String str = check3G4G.get(0);
//		String str1 = check3G4G.get(1);
//      for (String value : check3G4G) {
//		}
		
//		Map<String,String> check3G4G_2 = new HashMap<String,String>();
//		check3G4G_2.put("ProductType", "ProductType");
//		check3G4G_2.put("product_type_3G_prepay", product_type_3G_prepay);
//		check3G4G_2.put("product_type_4G_prepay", product_type_4G_prepay);
//		check3G4G_2.put("prepaid_no_service_message", "prepaid_no_service_message");
//		check3G4G_2.put("product_type_4G_postpay", product_type_4G_postpay);
//		String str2 = check3G4G_2.get("ProductType");
//		String str3 = check3G4G_2.get("product_type_3G_prepay");
		
		
	    check3G4G(ProductType,product_type_3G_prepay,product_type_4G_prepay,prepaid_no_service_message,product_type_4G_postpay,returnMap);
				
		// STEP:3.查詢最適資費與過去3個月帳單使用量資訊
        	try {
        	    Map<String, Object> map1 = bilService.getFindoutRatePlan(profileBean, SERVICE_CODE);
        	    List<WsRPlan> rPlan = (ArrayList<WsRPlan>) map1.get("rPlan");
        	    
        	    List<WsRateSumdata> rateSumdata = (ArrayList<WsRateSumdata>) map1.get("rateSumdatas");
        	    
        	    checkB(rPlan,rateSumdata);
        		String check = rateSumdata.get(0).getRECHECKLOWERTHANREAL();
        		
        		// STEP:4.第一筆的比較,若是higer則show "您使用之資費已是最適合您之資費！"
        		if(check.equals("higher")){
                	        returnMap.put("billReCheckListmessage", "您使用之資費已是最適合您之資費！</br></br>");
        		}
        	    
        		//5.推薦資費低於實際資費才顯示
        	    
        	    //test 時先mark
        	        returnMap.put("rateSumdata", removeEnity(rateSumdata)); 
//        	    	returnMap.put("rateSumdata", rateSumdata); 
        	        returnMap.put("rPlan", processEnity(rPlan));       
        		return returnMap;
        	} 
        	catch (Exception e) {
        	        returnMap.put("billFindError", error_message); 
        		log.error("error : 查詢失敗 " + e);
			return returnMap;
        	}
	}

	private List<WsRateSumdata> removeEnity(List<WsRateSumdata> rateSumdata) {
	    	log.info("rateSumdata.size() :"+rateSumdata.size());
		for (int i = 0; i < rateSumdata.size(); i++) {
		    if(!rateSumdata.get(i).getRECHECKLOWERTHANREAL().equals("lower")){
			rateSumdata.remove(i);
		    } 
		}
		return rateSumdata;
	}
	
	private List<WsRPlan> processEnity(List<WsRPlan> rPlan) {
	    	log.info("rPlan.size() :"+rPlan.size());
		for (int i = 0; i < rPlan.size(); i++) {
		    String realvvsdFee = rPlan.get(i).getREALVVSDFEE();
		    String recheckvvsdFee = rPlan.get(i).getRECHECKVVSDFEE();
		    
		    rPlan.get(i).setREALVVSDFEE(realvvsdFee.equals("0")?"該資費已下架":realvvsdFee + "元");
		    rPlan.get(i).setRECHECKVVSDFEE(recheckvvsdFee+"元");
		}
		
		return rPlan;
	}		

	
	private Map<String,Object> check3G4G(String ProductType,String product_type_3G_prepay,String product_type_4G_prepay,
				 String prepaid_no_service_message,String product_type_4G_postpay,Map<String, Object> returnMap)
	{
	    
	    	//未開放給3G,4G預付卡的用戶使用
		if (ProductType.equals(product_type_3G_prepay)||
			ProductType.equals(product_type_4G_prepay))
		{
			returnMap.put("message_noservice", prepaid_no_service_message);
			log.info("prepay");
			return returnMap;
		}
		
	}

}
