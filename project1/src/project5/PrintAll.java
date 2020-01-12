package project5;

public class PrintAll {
	
	private void  printCost(String s, String t) {
		System.out.println(s + ":" + t);
	}
	

	public static void main(String[] args) {
		EngineSixImpl engineSixImpl = new EngineSixImpl();
		engineSixImpl.setS("1600");
		engineSixImpl.setT("20000");
		PrintAll printAll = new PrintAll();
		String s = engineSixImpl.getS();
		String t = engineSixImpl.getT();
		printAll.printCost(s,t);
		
//		EngineTwentyImpl engineTwentyImpl = new EngineTwentyImpl();
//		engineTwentyImpl.setS("2000");
//		engineTwentyImpl.setT("25000");
//		s = engineTwentyImpl.getS();
//		t = engineTwentyImpl.getT();
//		printAll.printCost(s,t);
//
//		AutoImpl autoImpl = new AutoImpl();
//		autoImpl.setS("Auto");
//		autoImpl.setT("12000");
//		s = autoImpl.getS();
//		t = autoImpl.getT();
//		printAll.printCost(s,t);
//
//
//		ManualImpl manualImpl = new ManualImpl();
//		manualImpl.setS("Manual");
//		manualImpl.setT("10000");
//		s = manualImpl.getS();
//		t = manualImpl.getT();
//		printAll.printCost(s,t);
//		
//		SoundImpl soundImpl = new SoundImpl();
//		soundImpl.setS("Sound");
//		soundImpl.setT("2000");
//		s = soundImpl.getS();
//		t = soundImpl.getT();
//		printAll.printCost(s,t);
//		
//		PrintCostGener<String,String> printCostGener = new PrintCostGener<String,String>();
//		printCostGener.setS("1600");
//		printCostGener.setT("20000");
//		printCostGener.printCost();
//		
//		PrintCostGener<String,Double> printCostGener1 = new PrintCostGener<String,Double>();
//		printCostGener1.setS("1600");
//		printCostGener1.setT(20.22);
//		printCostGener1.printCost();
		
	}
}
