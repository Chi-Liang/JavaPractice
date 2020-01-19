package ResourceTest;

import org.springframework.stereotype.Service;

@Service("eRR")
public class ManImpl implements Human {

	@Override
	public void speak() {
		
		System.out.println(" man speaking! ");

	}

}
