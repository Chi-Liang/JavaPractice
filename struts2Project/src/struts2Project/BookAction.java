package struts2Project;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	public String title;
	public Book book;
	public static List<Book> booklist = new ArrayList<Book>();

	public String initAdd() {
		return "initAdd";
	}

	public String add() {
		booklist.add(book);
		title = "增加書籍成功";
		return "success";
	}

	public String list() {
		return "list";
	}

	public String clear() {
		booklist.clear();
		title = "清除書籍成功";
		return "list";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public List<Book> getBooklist() {
		return booklist;
	}

	public void setBooklist(List<Book> booklist) {
		this.booklist = booklist;
	}

}
