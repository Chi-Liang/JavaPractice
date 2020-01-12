package webTest9;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;

import net.sf.json.JSONObject;
import webTest9.model.Author;
import webTest9.model.Book;
import webTest9.model.Magazine;

public class Aaa {

	public static void main(String[] args) {
		
		Magazine magazine = new Magazine();	
		Book book = new Book();
		Author author = new Author();
		magazine.setId(1);
		magazine.setName("111");
		magazine.setPrice(100);
		magazine.setAa(new Date());
		author.setAuthorId(555);
		author.setAuthorName("ccc");
		magazine.setAuthor(author);
		
		book.setId(2);
		book.setName("bbb");
		book.setPrice(200);
		try {
			BeanUtils.copyProperties(book, magazine);
			System.out.println("magazine:"+JSONObject.fromObject(magazine).toString());
			System.out.println("book:"+JSONObject.fromObject(book).toString());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
