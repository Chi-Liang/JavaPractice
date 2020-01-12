package project4;

public class EnumTest {

	public static void main(String[] args) {
		String a = BonusPayoutCycle.fromString(001);
		String b = BonusPayoutCycle.fromString(002);
		String c = BonusPayoutCycle.fromString(005);
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
	}

}
