package project4;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ArrayCompute {
	public int[] Split(String str) {

		String[] tokens = str.split(";");
		int[] arr = new int[10];
		for (int i = 0; i < tokens.length; i++) {
			arr[i] = Integer.parseInt(tokens[i]);
		}
		return arr;
	}

	public static void main(String[] args) {

		BufferedReader buf = new BufferedReader(new InputStreamReader(System.in));
		try {
			System.out.print("請輸入你要的數字:");
			String str = buf.readLine();

			ArrayCompute arrayCompute = new ArrayCompute();
			int[] arr = arrayCompute.Split(str);

			CountSumAvg process = new CountSumAvg();
			int count = process.greatThanSixty(arr);
			System.out.println("大於60有" + count + "個");

			int sum = process.greatThanSixtySum(arr);
			System.out.println("總和=" + sum);

			int avg = process.greatThanSixtyAvg(sum);
			System.out.println("平均=" + avg);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
