package project3;

import java.util.ArrayList;
import java.util.List;

import com.google.common.collect.Ordering;
import com.google.common.primitives.Doubles;

public class Test5 {

	public static void main(String[] args) {
		City city1 = new City("aaa", 1, 0.5);
		City city2 = new City("bbb", 3, 0.5);
		City city3 = new City("ccc", 2, 0.5);

		List<City> aa = new ArrayList<City>();
		aa.add(city1);
		aa.add(city2);
		aa.add(city3);

		Ordering<City> peopleOrdering = new Ordering<City>() {
			@Override
			public int compare(City arg0, City arg1) {
				return Doubles.compare(arg0.getPopulation(), arg1.getPopulation()); // 左右兩邊沒有差
			}
		};
		aa = peopleOrdering.reverse().sortedCopy(aa);
		for (City city : aa) {
			System.out.println(city.getPopulation());
		}
	}
}
