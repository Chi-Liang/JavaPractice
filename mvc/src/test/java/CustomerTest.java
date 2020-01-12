import org.junit.jupiter.api.Test;

import service.CustomerService;

class CustomerTest {

	@Test
	void test() {
		
		CustomerService CustomerService = new CustomerService();
		String id = CustomerService.findAll();
		System.out.println("junit id:" + id);
		
	}

}
