package ResourceTest;

import javax.annotation.Resource;

import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

public class Test1 {
	private static WebApplicationContext context = ContextLoader.getCurrentWebApplicationContext();
//	@Resource(name="eRR")
//	private Human human;
	private Human accountInfoDao = (Human) context.getBean("accountInfoDao");
	private void pub() {
		
		accountInfoDao.speak();

	}
	
	public static void main(String[] args) {
		Test1 test1 = new Test1();
		test1.pub();
	}
	
}
