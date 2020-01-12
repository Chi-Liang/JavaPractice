package project4;

public class EnumTest {

	public static void main(String[] args) {
		String a = BonusPayoutCycle.fromString("0001");
		String b = BonusPayoutCycle.fromString("0002");
		String c = BonusPayoutCycle.fromString("0003");
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
	}

}
