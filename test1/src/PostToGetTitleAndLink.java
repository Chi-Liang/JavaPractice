import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class PostToGetTitleAndLink
{

	public static void main( String[] args )
	{

		Scanner scanner = new Scanner( System.in );

		System.out.println( "起點則填 請輸入推廣id,再按enter." );
		int num1 = scanner.nextInt();

		System.out.println( "num1****:" + num1 );
		StringBuffer HTMLSTring = name();

		Document html = Jsoup.parse( HTMLSTring.toString() );

		StringBuffer aa = new StringBuffer();

		Elements links = html.select( "a[href]" );

		String url = "http://www.post01.com";
		for( Element link : links )
		{
//				System.out.println(link.text());
//					if(link.attr("href").contains(num1+"") && !link.text().equals("") ){
			if( !( link.text().equals( "全部" ) ) && !( link.text().equals( "" ) ) )
			{
				aa.append( link.text() );
				System.out.println( link.text() );
				aa.append( "\n" );

				aa.append( link.attr( "href" ) );
				System.out.println( link.attr( "href" ) );
				aa.append( "\n" ).append( "\n" );
			}
//					}
		}
		name1( aa.toString() );
		System.out.println( "this is finish..." );
	}

	public static StringBuffer name()
	{
		String strNum = null;
		StringBuffer sb = new StringBuffer();
		try
		{
			FileReader fr = new FileReader( "d:\\PostToGetTitleAndLink\\txt\\case1.txt" );
			BufferedReader br = new BufferedReader( fr );

			try
			{
//				while( ( strNum = br.readLine() ) != null )
//				{
//					System.out.println( strNum );
//					sb.append( strNum );
//				}
//				while( ( strNum = br.readLine() ) != null )
//				{
//					strNum = StringUtils.trimToEmpty( strNum );
//					if( strNum.equals( "<tbody>" ) )
//					{
//						while( !( strNum = StringUtils.trimToEmpty( br.readLine() ) ).equals( "</tbody>" ) )
//						{
//							System.out.println( strNum );
//							sb.append( strNum );
//						}
//					}
//				}
				int temp = 0;
				while( ( strNum = StringUtils.trimToEmpty( br.readLine() ) ) != null )
				{
					if( strNum.equals( "<tbody>" ) == false && temp == 0 )
					{
						continue;
					}
					temp = 1;
					if( strNum.equals( "</tbody>" ) == false )
					{
						System.out.println( strNum );
						sb.append( strNum );
					}
					else
					{
						break;
					}

				}
			}
			catch( IOException e )
			{
				e.printStackTrace();
			}
		}
		catch( FileNotFoundException e )
		{
			e.printStackTrace();
		}
		return sb;

	}

	public static void name1( String a )
	{
		File saveFile = new File( "d:\\PostToGetTitleAndLink\\txt\\case1output.txt" );
		try
		{
			FileWriter fwriter = new FileWriter( saveFile );
			fwriter.write( a );
			fwriter.close();
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
	}
}