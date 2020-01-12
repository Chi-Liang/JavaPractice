package project3;

import java.util.Arrays;
import java.util.List;

import com.google.common.collect.Ordering;
import com.google.common.primitives.Doubles;

public class Test1 {

	public static void main(String[] args) {
		Double[] first = {0.1,0.3,0.2};
		List<Double> numbers = Arrays.asList(first);
		
		Ordering<Double> peopleOrdering = new Ordering<Double>() {
            @Override
            public int compare(Double left, Double right) {
                return Doubles.compare(left, right);  //左右兩邊沒有差
            }
        };
        List<Double> number1= peopleOrdering.reverse().sortedCopy(numbers);
        for (Double double1 : number1) {
			System.out.println(double1);
		}
        
        Double a = peopleOrdering.max(numbers);
        System.out.println(a);
	}

}
