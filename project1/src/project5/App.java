package project5;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class App {

	public static void main(String[] args) throws IOException {
		
		char data[] = new char[1024];
		FileReader fr = new FileReader("C:\\Java\\donkey.txt");
		FileWriter fw = new FileWriter("C:\\Java\\donkey1.txt");
		int num = fr.read(data);
		String str = new String(data,0,num);
		System.out.println(str);
		fw.write(str);
		fw.close();
		fr.close();
		
	}

}
