package project4;

import java.util.HashSet;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;

public class LogTestt {

	public static void main(String[] args) {
		Set<String> aaSet = new HashSet<String>();
		aaSet.add("111");
		aaSet.add("222");

		String a = "";
		for (String str : aaSet) {
			if (StringUtils.isEmpty(a)) {
				a += str;
			} else {
				a += "," + str;
			}

		}
		System.out.println(a);

		String[] bb = a.split(",");
		System.out.println(bb);
	}

}
