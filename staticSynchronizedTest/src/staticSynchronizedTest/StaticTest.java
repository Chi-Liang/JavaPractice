package staticSynchronizedTest;

public class StaticTest {
	
	public static StaticTest staticTest = new StaticTest();
	
	public static StaticTest getInstance() {
		
		return staticTest;
	}
	
	public synchronized void aaa(String action) {
		
		try {
			System.out.println(System.currentTimeMillis() +" millsecond action:" + action);
			Thread.sleep(10000);
			System.out.println(System.currentTimeMillis() +" millsecond action:" + action);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
