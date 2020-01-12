package project1;

public class Calculateimp implements Calculate {

	@Override
	public int add(int a, int b) {

		int c = a + b;

		return c;
	}

	@Override
	public int sub(int a, int b) {
		
		int c = a - b;

		return c;
	}
}
