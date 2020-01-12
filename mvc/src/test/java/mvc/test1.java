package mvc;

import org.junit.Test;

import service.CustomerService;

public class test1 {

	@Test
	public void test() {
		CustomerService CustomerService = new CustomerService();
		String id = CustomerService.findAll();
		System.out.println("junit id:" + id);
	}

}
