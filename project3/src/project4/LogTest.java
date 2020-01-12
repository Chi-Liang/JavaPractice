package project4;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

public class LogTest {

	public static void main(String[] args) {
		BasicConfigurator.configure();
		Logger logger = Logger.getLogger(LogTest.class);
	}
}
