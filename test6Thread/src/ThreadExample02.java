public class ThreadExample02 implements Runnable
{
	public void run()
	{
		Thread.currentThread().setName( "my thread 02" );
		System.out.println( "Run " + Thread.currentThread().getName() );
	}

	public static void main( String[] args )
	{
		ThreadExample02 obj = new ThreadExample02();
		Thread t02 = new Thread( obj ); // 把obj 指定給Thread物件
		t02.start();
		System.out.println( "main thread" );
	}
}
