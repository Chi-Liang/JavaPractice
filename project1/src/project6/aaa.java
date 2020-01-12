package project6;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class aaa {

	public static void main(String[] args) {
		List<String> check3G4G = new ArrayList<String>();
		check3G4G.add("aa");
		check3G4G.add("bb");
		check3G4G.add("cc");
		check3G4G.add("dd");
		check3G4G.add("eeeee");
		
		String str = check3G4G.get(0);
		String str1 = check3G4G.get(1);
		System.out.println(str+":"+str1);
		
		Map<String,String> check3G4G_2 = new HashMap<String,String>();
		check3G4G_2.put("aa", "aaa");
		check3G4G_2.put("bb", "bbb");
		check3G4G_2.put("cc", "ccc");
		check3G4G_2.put("dd", "ddd");
		check3G4G_2.put("ee", "eee");
		
		String str2 = check3G4G_2.get("aa");
		String str3 = check3G4G_2.get("dd");
		System.out.println(str2+":"+str3);

	}

}
