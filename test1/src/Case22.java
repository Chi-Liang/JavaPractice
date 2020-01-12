import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class Case22
{

	public static void main( String[] args )
	{

		StringBuffer HTMLSTring = name();

		name1( HTMLSTring.toString() );
		System.out.println( "this is finish..." );
	}

	public static StringBuffer name()
	{
		StringBuffer sb = new StringBuffer();

		String fileName = "d:\\PostToGetTitleAndLink\\txt\\case2.txt";

		try
		{
//			Document doc1 = Jsoup.parse( new File( fileName ), "utf-8" );
//			for( Element link : doc1.getElementsByClass( "title" ) )
//			{
//				for( Element link1 : link.select( "a[href]" ) )
//				{
//					sb.append( link1.text() );
//					sb.append( "\n" );
//					sb.append( link1.attr( "href" ) );
//					sb.append( "\n\n" );
//				}
//
//			}
			Document doc1 = Jsoup.parse( new File( fileName ), "utf-8" );
			for( Element link : doc1.getElementsByAttributeValue( "target", "_blank" ) )
			{
				for( Element link1 : link.select( "a[href]" ) )
				{
					if( link1.attr( "href" ).startsWith( "http://www.coco02.net" ) )
					{
						sb.append( link1.text() );
						sb.append( "\n" );
						sb.append( link1.attr( "href" ) );
						sb.append( "\n\n" );
					}
				}

			}
		}
		catch( IOException e1 )
		{
			e1.printStackTrace();
		}

		return sb;

	}

	public static void name1( String a )
	{
		File saveFile = new File( "d:\\PostToGetTitleAndLink\\txt\\case2output.txt" );
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