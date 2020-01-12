package project5;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class App2 {
	public static void main(String[] args) throws IOException {
		 FileInputStream fi = new FileInputStream("C:\\Java\\lena.gif");
		 FileOutputStream fo = new FileOutputStream("C:\\Java\\my_lena.gif");
		 byte ba[] = new byte[fi.available()];
		 fi.read(ba);
		 fo.write(ba);
		 fo.close();
		 fi.close();
	}
}
