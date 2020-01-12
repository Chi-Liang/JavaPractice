package project3;


public enum BonusPayoutCycle {
	
	
	BenefiaryDeath(00001,"身故受益人1"),
	BenefiaryExpire(00002,"滿期受益人1"),
	BenefiarySur(00003,"還本受益人1")
	;
	
	
	private int value;
	private String name;	

	BonusPayoutCycle(int value,String name) {
		this.value = value;
		this.name = name;
	}


	public int getValue() {
		return value;
	}


	public void setValue(int value) {
		this.value = value;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	
    
    
    
    
//    public static BonusPayoutCycle fromString(String value) {
//        if (value != null) {
//          for (BonusPayoutCycle b : BonusPayoutCycle.values()) {
//            if (value.equalsIgnoreCase(b.value)) {
//              return b;
//            }
//          }
//        }
//        return null;
//      }
//    
    public static String fromString(int value) {
    	
		switch (value) {
			case 00001:
				return BenefiaryDeath.getName();
			case 00002:
				return BenefiaryExpire.getName();
			case 00003:
				return BenefiarySur.getName();	
		}
    	
		return null;
//    	
//    }
    }
}   
