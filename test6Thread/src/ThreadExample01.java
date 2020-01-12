public class ThreadExample01 extends Thread
{

	public void run()
	{
		System.out.println( getName() );
	}

	public static void main( String[] args )
	{

		ThreadExample01 t = new ThreadExample01();
		t.setName( "111" );
		t.start();

		ThreadExample01 t2 = new ThreadExample01();
		t2.setName( "222" );
		t2.start();

		try
		{
			t2.join();
		}
		catch( InterruptedException e )
		{
			e.printStackTrace();
			System.out.println( "thread 被中斷" );
		}

		ThreadExample01 t3 = new ThreadExample01();
		t3.setName( "333" );
		t3.start();

//		try
//		{
//			t3.join();
//		}
//		catch( InterruptedException e )
//		{
//			e.printStackTrace();
//			System.out.println( "thread 被中斷" );
//		}

		ThreadExample01 t4 = new ThreadExample01();
		t4.setName( "444" );
		t4.start();
//
//		try
//		{
//			t.join();
//			t2.join();
//			t3.join();
//			t4.join();
//		}
//		catch( InterruptedException e )
//		{
//			e.printStackTrace();
//			System.out.println( "thread 被中斷" );
//		}

		System.out.println( "main thread....." );

	}

}
