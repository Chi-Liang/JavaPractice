package test6;

public class BubbleSort
{
	public static void main( String[] args )
	{
		int a[] = { 45, 23, 18, 10, 6, 8, 67, 98, 30, 50 };

		for( int i = 0; i < a.length - 1; i++ )
		{
			int temp = 0;

			for( int j = 0; j < a.length - i - 1; j++ )
			{
				if( a[ j ] > a[ j + 1 ] )
				{
					temp = a[ j ];
					a[ j ] = a[ j + 1 ];
					a[ j + 1 ] = temp;

				}
			}
		}
		for( int i = 0; i < a.length; i++ )
		{
			System.out.println( a[ i ] );
		}
	}
}
