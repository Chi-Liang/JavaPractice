import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import com.google.common.collect.ImmutableMap;

public class ReadXMLDemo 
{   
    public static void main(String[] args) 
    {
        String xmlFile = "employees.xml";
        
        Map<String, String> result = ImmutableMap.of("xmlFile",xmlFile);
        Document document = getSAXParsedDocument(result);
         
        /**Read Document Content*/
         
        Element rootNode = document.getRootElement();
        System.out.println("Root Element :: " + rootNode.getName());
         
        System.out.println("\n=================================\n");
         
        /**Read Employee Content*/
        
        List<Element> employeeNodes = rootNode.getChildren("employee");
        
        readEmployeeNode(employeeNodes);
         
    }
     
    //xx
    private static void readEmployeeNode(List<Element> employeeNodes) 
    {	
    	for (Element employeeNode : employeeNodes) {
    		//Employee Id
            System.out.println("Id : " + employeeNode.getAttributeValue("id"));
             
            //First Name
            System.out.println("FirstName : " + employeeNode.getChildText("firstName"));
             
            //Last Name
            System.out.println("LastName : " + employeeNode.getChildText("lastName"));
             
            //Country
            System.out.println("country : " + employeeNode.getChild("country").getText());
             
            List<Element> departmentNodes = employeeNode.getChildren("department");
            readDepartmentNode(departmentNodes);
            System.out.println("\n=================================\n");
		}
    }
     
    //xx
    private static void readDepartmentNode(List<Element> departmentNodes) 
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