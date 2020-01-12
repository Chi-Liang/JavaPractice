package project2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Test {
	public static void main(String[] args) {
		List<Person> listA = new ArrayList<Person>();
		Person p1 = new Person();
		Person p2 = new Person();
		Person p3 = new Person();
		
		p1.setName("name1");
		p1.setOrder(1);
		
		p2.setName("name2");
		p2.setOrder(2);
		
		p3.setName("name3");
		p3.setOrder(3);
		
		listA.add(p1);
		listA.add(p2);
		listA.add(p3);
		
		Collections.sort(listA,new Comparator<Person>(){
			public int compare(Person arg0,Person arg1) {
				return arg0.getOrder().compareTo(arg1.getOrder());
			}
		});
		
		for (Person p : listA) {
            System.out.println(p.getName());
        }
	}
}
