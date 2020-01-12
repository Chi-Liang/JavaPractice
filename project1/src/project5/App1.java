package project5;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class App1 {
	public static void main(String[] args) throws IOException {
		String str="";
		int count=0;
		FileReader fr = new FileReader("C:\\Java\\number.txt");
		BufferedReader bfr = new BufferedReader(fr);
		FileWriter fw= new FileWriter("C:\\Java\\random.txt");
		BufferedWriter bfw= new BufferedWriter(fw);
		while((str=bfr.readLine())!=null) {
			System.out.println(str);
			bfw.write(str);
			bfw.newLine();
		}
		bfw.flush();
		fw.close();
		fr.close();
		
	}
}
