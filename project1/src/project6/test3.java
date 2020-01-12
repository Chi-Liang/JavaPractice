package project6;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class test3 {

	public static void main(String[] args) {
		try {
			FileInputStream fi = new FileInputStream("lena.gif");
			FileOutputStream fo = new FileOutputStream("my_lena.gif");
			byte[] data = new byte[fi.available()];
			fi.read(data);
			fo.write(data);
			fi.close();
			fo.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
