package test6;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Fibonacci
{
	public long calculate( int n )
	{
		int[] a = new int[ n + 1 ];
		int sum = 0;
		if( n == 1 || n == 2 )
		{
			sum = 1;
		}
		if( n >= 3 )
		{
			a[ 0 ] = 0;
			a[ 1 ] = 1;
			a[ 2 ] = 1;
			for( int i = 3; i < n + 1; i++ )
			{
				a[ i ] = a[ i - 1 ] + a[ i - 2 ];
			}
			sum = a[ n ];
		}
		return sum;
	}

	public static void main( String[] args )
	{
		BufferedReader buf = new BufferedReader( new InputStreamReader( System.in ) );
		try
		{
			int n = Integer.parseInt( buf.readLine() );
			Fibonacci fibonacci = new Fibonacci();
			long sum = fibonacci.calculate( n );
			System.out.println( sum );
		}

		catch( Exception e )
		{
			e.printStackTrace();
		}

	}

}
