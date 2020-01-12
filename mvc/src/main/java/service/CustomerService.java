package service;

import dao.CustomerDaoImpl;

public class CustomerService {
	
	public String findAll() {
		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl();
		return customerDaoImpl.getAll();
	}
	
}
