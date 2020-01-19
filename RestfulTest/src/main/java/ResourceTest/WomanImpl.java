package ResourceTest;

import org.springframework.stereotype.Service;


public class WomanImpl implements Human {

	@Override
	public void speak() {
		
		System.out.println(" woman speaking! ");
	}

}
