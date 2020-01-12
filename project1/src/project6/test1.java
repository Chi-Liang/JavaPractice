package project6;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class test1 {

	public static void main(String[] args) {
		char[] data = new char[1024];
		try {
			FileReader fr = new FileReader("donkey.txt");
			FileWriter fw = new FileWriter("donkey1.txt");
			int num = fr.read(data);
			String str = new String(data, 0, num);
			fw.write(str);
			System.out.println(str);
			fw.close();
			fr.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
