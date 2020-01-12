package com.nanshan.pqm.mo.vo;

import java.util.ArrayList;

public class SelectListVo {
	private String text;
	private String value;
	ArrayList<SelectListVo> aa = new ArrayList<SelectListVo>();
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public ArrayList<SelectListVo> getAa() {
		return aa;
	}
	public void setAa(ArrayList<SelectListVo> aa) {
		this.aa = aa;
	}
	
	
}
