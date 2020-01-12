package project6;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class test2 {

	public static void main(String[] args) {
		String str = "";
		try {
			FileReader fr = new FileReader("C:\\Java\\number.txt");
			FileWriter fw = new FileWriter("C:\\Java\\random.txt");
			BufferedReader bfr = new BufferedReader(fr);
			BufferedWriter bfw = new BufferedWriter(fw);
			while ((str = bfr.readLine()) != null) {
				System.out.println(str);
				bfw.write(str);
				bfw.newLine();
			}
			bfw.flush();
			fw.close();
			fr.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
