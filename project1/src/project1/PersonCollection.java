package project1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PersonCollection {

	public List<Person> pp(){
		Person person1 = new Person();
		List<Person> p =new ArrayList<Person>();
		person1.setId(1);
		person1.setAge("55");
		person1.setSex("M");
		p.add(person1);
		
		Person person2 = new Person();
		person2.setId(2);
		person2.setAge("30");
		person2.setSex("M");
		p.add(person2);
		
		Person person3 = new Person();
		person3.setId(3);
		person3.setAge("35");
		person3.setSex("F");
		p.add(person3);
		
		return p;
	}
	
	
	
	public static void main(String[] args) {
		PersonCollection ppp = new PersonCollection();
		List<Person> cc = ppp.pp();
		List<String> tt = new ArrayList<String>();
		List<Person> dd = new ArrayList<Person>();
		
		for (Person person : cc) {
			tt.add(person.getAge());
			Collections.sort(tt);
		}
		System.out.println(tt);
		for (String t : tt) {
			Person person = new Person();
			for (Person p : cc) {
				if(t.equals(p.getAge())) {
					person.setAge(p.getAge());
					person.setId(p.getId());
					person.setSex(p.getSex());
				}
			}
			dd.add(person);
		}
		for (Person person : dd) {
			System.out.println(person.getAge());
		}
		
	}

}
