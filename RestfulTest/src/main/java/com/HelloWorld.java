package com;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import ResourceTest.Human;
import model.AModel;
import net.sf.json.JSONArray;

@Path("/hello")
public class HelloWorld {
	
    private List<String> hellos = Arrays.asList("Hello, World", "Hello, Codedata");
    
//    @Autowired
//    @Qualifier("ePosA1")
//    private ChangeA1 changeA1;
//	   @Resource(name = "ePosA1")
//	   private ChangeA1 changeA1;
//	   private static WebApplicationContext context = ContextLoader.getCurrentWebApplicationContext();
//	   private ChangeA1 accountInfoDao = (ChangeA1) context.getBean("ePosA1");
    
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String sayPlainTextHello() {
      return "Hello Jersey";
    }

    @GET
    @Path("/{id}/add")
    public String show(@PathParam("id") int id) {
        return hellos.get(id);
    }

    @GET
    @Path("/add")
//    @Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
    @Consumes(MediaType.APPLICATION_JSON)
    public String addPage() {
        return "AddPage for hellos";
    }
    
    @GET
    @Path("/sub")
    @Produces(MediaType.APPLICATION_JSON)
    public AModel subPage(@QueryParam("policyNo") String policyNo,@Context
    	    HttpServletRequest req,@Context HttpServletResponse resp) {
    //	changeA1.getDB("1111111");
    	AModel aModel = new AModel();
    	aModel.setName("Chen");
    	aModel.setPassword(policyNo);
		return aModel;
    	
    }

    @POST
    @Path("/{policyNo}/sub")
 // @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
    public AModel postTest(@FormParam("id") String id,@PathParam("policyNo") String policyNo) {
    	
    	AModel aModel = new AModel();
    	aModel.setName("Chen");
    	aModel.setPassword(id);
		return aModel;
    	
    }
    
    @PUT
    @Path("/sub")
 // @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
    public AModel putTest(@FormParam("id") String id) {
    	
    	AModel aModel = new AModel();
    	aModel.setName("Chen");
    	aModel.setPassword(id);
    	
        return aModel ;
    }
    
    @DELETE
    @Path("/sub")
 // @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
    public String deleteTest(@FormParam("id") String id) {
    	
    	List<AModel> aa = new ArrayList<AModel>();
    	AModel aModel = new AModel();
    	aModel.setName("Chen");
    	aModel.setPassword(id);
    	aa.add(aModel);
    	aModel = new AModel();
    	aModel.setName("Lin");
    	aModel.setPassword(id);
    	aa.add(aModel);
    	
        return JSONArray.fromObject(aa).toString() ;
    }
    
}
