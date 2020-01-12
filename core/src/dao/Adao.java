package dao;

import model.AModel;

public class Adao {
	
	public AModel getStr(String cn,String en ) {
		
		AModel aModel = new AModel();
		aModel.setChinsesName(cn);
		aModel.setEnglishName(en);
		
		return aModel;
	}
	
	
//	public static void main(String[] args) {
//		Adao adao = new Adao();
//		String value = adao.getStr();
//		System.out.println(value);
//	}

}
