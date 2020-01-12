package project3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.common.collect.Ordering;
import com.google.common.primitives.Doubles;

public class Test4 {

	public static void main(String[] args) {
        
        //陣列轉ArrayList
        
        
        City city1 = new City("aaa", 1, 0.5);
        City city2 = new City("bbb", 3, 0.5);
        City city3 = new City("ccc", 2, 0.5);
        
        List<City> aa = new ArrayList<City>();
        aa.add(city1);
        aa.add(city2);
        aa.add(city3);
        
        //排序比较器：根据原始的大小排序
        
        Ordering<City> peopleOrdering = new Ordering<City>() {
            @Override
            public int compare(City arg0, City arg1) {
                return Doubles.compare(arg0.getPopulation(), arg1.getPopulation());  //左右兩邊沒有差
            }
        };

        List<City> bb = peopleOrdering.reverse().sortedCopy(aa);
        for(City b: bb){
        	System.out.println(b.getPopulation());
        }

        
        
//        System.out.println(peopleOrdering.sortedCopy(numbers));
        

	}

}
