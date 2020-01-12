package project4;

public class CountSumAvg {

	public int greatThanSixty(int[] arr) {
		int count = 0;
		for (int j = 0; j < arr.length; j++) {
			if (arr[j] >= 60) {
				count++;
			}
		}
		return count;
	}

	public int greatThanSixtySum(int[] arr) {
		int sum = 0;
		for (int i = 0; i < arr.length; i++) {
			sum += arr[i];
		}
		return sum;
	}

	public int greatThanSixtyAvg(int sum) {
		int constInt = 10;
		int avg = sum / constInt;
		return avg;
	}

}
