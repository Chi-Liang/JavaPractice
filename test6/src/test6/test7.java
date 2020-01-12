package test6;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class test7
{
	public java.sql.Date convertStr2Date( String source )
	{
		java.sql.Date sqlDate = null;
		SimpleDateFormat sf = new SimpleDateFormat( "yyyy-MM-dd" );

		try
		{
			java.util.Date date = sf.parse( source );
			sqlDate = new java.sql.Date( date.getTime() );
		}
		catch( ParseException e )
		{
			System.out.println( "can not parse date:" + e.getMessage() );
		}
		return sqlDate;
	}

	public static void main( String[] args )
	{
		test7 aa = new test7();
		java.sql.Date date = aa.convertStr2Date( "1990-01-01" );
		System.out.println( date );
	}
}
