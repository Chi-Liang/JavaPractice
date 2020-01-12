package project4;

public enum BonusPayoutCycle {
	AAA(0001,"要保人"),
	BBB(0002,"被保人"),
	CCC(0003,"受益人");
	
	int num;
	String name;
	
	BonusPayoutCycle(int num,String name){
		this.num = num;
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public static String fromString(int num){
		switch(num) {
		case 0001:
			return AAA.getName();
		case 0002:
			return BBB.getName();
		case 0003:
			return CCC.getName();	
		}
		return null;
	}
	
}
