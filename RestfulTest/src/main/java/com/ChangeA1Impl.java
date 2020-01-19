package com;

import org.springframework.stereotype.Service;

import model.AModel;

@Service("ePosA1")
public class ChangeA1Impl implements ChangeA1 {

	@Override
	public AModel getRFC(String policyNo) {
		
		AModel aModel = new AModel();
    	aModel.setName("Chen");
    	aModel.setPassword(policyNo);
		return aModel;

	}

	@Override
	public AModel getDB(String policyNo) {
		
		AModel aModel = new AModel();
    	aModel.setName("Chen");
    	aModel.setPassword(policyNo);
		return aModel;
	}

}
