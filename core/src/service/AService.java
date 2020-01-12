package service;

import dao.Adao;
import model.AModel;

public class AService {
	
	public AModel getStr(String cn,String en) {
		
		Adao adao = new Adao();
		AModel value = adao.getStr(cn,en);
		
		return value;
	}
	
	
}
