package project3;

import java.util.Arrays;
import java.util.List;

import com.google.common.collect.Ordering;
import com.google.common.primitives.Doubles;

public class Test3 {

	public static void main(String[] args) {
        Double[] first = {0.1,0.3, 0.2};
        
        //陣列轉ArrayList
        List<Double> numbers = Arrays.asList(first);
        
        Ordering<Double> peopleOrdering = new Ordering<Double>() {
            @Override
            public int compare(Double left, Double right) {
                return Doubles.compare(left, right);  //左右兩邊沒有差
            }
        };
        List<Double> numbers1 = peopleOrdering.sortedCopy(numbers);

//        System.out.println(peopleOrdering.sortedCopy(numbers));
//        System.out.println(peopleOrdering.reverse().sortedCopy(numbers));
        
        for(Double d:numbers1) {
        	System.out.println(d);
        }
        

	}

}
