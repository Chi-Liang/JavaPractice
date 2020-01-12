package webTest4;

import java.util.ArrayList;
import java.util.List;

public class Aaa {

	public static void main(String[] args) {
		List<String> aa = new ArrayList<String>();
		aa.add("bb");
		aa.add("bbcc");
		aa.add("bbdd");
		String qq = "bbccc";
		boolean a = aa.contains(qq);
		System.out.println(a);

	}

}
