package project3;

import org.apache.commons.lang3.*;

public class Test6 {

	public static void main(String[] args) {
		System.out.println(StringUtils.isEmpty(null));//true
        System.out.println(StringUtils.isEmpty(""));//true
        System.out.println(StringUtils.isEmpty(" "));//false
        System.out.println(StringUtils.isEmpty("abc"));//false
        System.out.println(StringUtils.isEmpty("   abc   "));//false
        
	}

}
