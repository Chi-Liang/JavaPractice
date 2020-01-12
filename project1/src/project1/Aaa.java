package project1;

public class Aaa {
	public static void main(String[] args) {
		Bbb bbb = new Bbb();
		int b=999;
		try {
			b = bbb.bb();
		} catch (ArithmeticException e) {
			// TODO Auto-generated catch block
			System.out.println("11111111" + e.getMessage());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("b:" + b );
	}
}
