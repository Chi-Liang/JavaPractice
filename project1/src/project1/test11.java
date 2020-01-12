package project1;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class test11 {

	public static void main(String[] args) {
		
		BufferedReader buf = new BufferedReader(new InputStreamReader(System.in));
		try {
			String[] a = { "a", "b", "c" };
			String[] b = new String[3];
			b[0] = "a";
			b[1] = "b";
			b[2] = "c";
			for (int i = 0; i <= 3; i++) {
				System.out.println("b["+i+"]: " + b[i]);
			}
			// int test = Integer.parseInt(buf.readLine());
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ArrayIndexOutOfBoundsException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println("aaaaaaaa");
		}
	}

}
