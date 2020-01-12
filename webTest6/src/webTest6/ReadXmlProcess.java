package webTest6;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

import com.google.common.collect.ImmutableMap;

public class ReadXmlProcess {

	public static void main(String[] args) 
    {
        String xmlFile = "books.xml";
        
        Map<String, String> result = ImmutableMap.of("xmlFile",xmlFile);
        Document document = getSAXParsedDocument(result);
         
        /**Read Document Content*/
         
        Element rootNode = document.getRootElement();
        System.out.println("Root Element :: " + rootNode.getName());
         
        System.out.println("\n=================================\n");
         
        /**Read Employee Content*/
        
        List<Element> bookNodes = rootNode.getChildren("book");
        ReadXmlProcess readXmlProcess = new ReadXmlProcess();
        
        Jto jto = new Jto();
        jto = readXmlProcess.readEmployeeNode(bookNodes);
        System.out.println("userName:"+jto.getUserName());
        System.out.println("price:"+jto.getPrice());
    }
	
	public Jto parseMain() {
         String xmlFile = "D://books.xml";
        
        Map<String, String> result = ImmutableMap.of("xmlFile",xmlFile);
        Document document = getSAXParsedDocument(result);
        Element rootNode = document.getRootElement();
        System.out.println("Root Element :: " + rootNode.getName());
        List<Element> bookNodes = rootNode.getChildren("book");
        ReadXmlProcess readXmlProcess = new ReadXmlProcess();
        
        Jto jto = new Jto();
        jto = readXmlProcess.readEmployeeNode(bookNodes);
        return jto;
	}
    //xx
    private  Jto readEmployeeNode(List<Element> bookNodes) 
    {	
    	int i = 1;
    	Jto jto = new Jto();
    	
    	for (Element bookNode : bookNodes) {
    		
    		if(i==1) {
    			jto.setUserName(bookNode.getChildText("name"));
    		}else if(i==2) {
    			jto.setPrice(bookNode.getChildText("price"));
    		}
    		i++;
    	}
    	return jto;
    }
     
    //xx
    private  void readDepartmentNode(List<Element> departmentNodes) 
    {	
    	for (Element departmentNode : departmentNodes) {
    		 //Department Id
            System.out.println("Department Id : " + departmentNode.getAttributeValue("id"));
             
            //Department Name
            System.out.println("Department Name : " + departmentNode.getChildText("name"));
		}
       
    }
     
     
    //xxx
    private static Document getSAXParsedDocument(Map<String, String> result) 
    {
        SAXBuilder builder = new SAXBuilder(); 
        Document document = null;
        String fileName =   result.get("xmlFile");
        try
        {
            document = builder.build(fileName);
        } 
        catch (JDOMException | IOException e) 
        {
            e.printStackTrace();
        }
        return document;
    }
}
