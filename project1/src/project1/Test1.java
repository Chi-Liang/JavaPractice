package project1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Test1 {
	
	public List<People> aa() {
		People people = new People();
		List<People> a = new ArrayList<People>();
		people.setId(1);
		people.setAge("25");
		people.setSex("F");
		a.add(people);
		
		
		People people1 = new People();
		people1.setId(2);
		people1.setAge("30");
		people1.setSex("F");	
		a.add(people1);
		People people2 = new People();
		people2.setId(3);
		people2.setAge("27");
		people2.setSex("M");	
		a.add(people2);
		return a;
	}

	public static void main(String[] args) {
		Test1 test1 = new Test1();
		List<People> cc =test1.aa();
		List<String> tt = new ArrayList<String>();
		for(People p:cc) {
			tt.add(p.getAge());
		}
	    Collections.sort(tt);
        System.out.println(tt);		
//		for(String s:tt) {
//			System.out.println(s);
//		}
		
		List<People> dd = new ArrayList<People>();
		
		for(People p:cc) {
			String age = p.getAge();
			People people11 = new People();
			for(String s:tt) {
				if(age.equals(s)){
					people11.setAge(p.getAge());
					people11.setId(p.getId());
					people11.setSex(p.getSex());
				}
			}
			dd.add(people11);
		}
		
		for (People people : dd) {
			System.out.println(people.getAge());
		}
		
	}

}
