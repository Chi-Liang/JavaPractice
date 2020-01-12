import java.io.FileWriter;
import java.io.IOException;

public class WriteXMLDemo {

	public static void main(String[] args) {

		FileWriter fw;
		try {
			fw = new FileWriter("gg.xml");
			fw.write(genXML());
			fw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static String genXML() {
		StringBuffer xml = new StringBuffer();
		xml.append("<bookstore>");
		xml.append("<book category=\"cooking\">");
		xml.append("<title lang=\"en\">Everyday Italian</title>");
		xml.append("<author>Giada De Laurentiis</author>");
		xml.append(" <year>2005</year>");
		xml.append("<price>30.00</price>");
		xml.append("</book>");
		xml.append("</bookstore>");
		
		return xml.toString();
	}
}
