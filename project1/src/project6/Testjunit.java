package project6;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import org.junit.Before;
import org.junit.Test;

public class Testjunit
{
	static final String randomUUIDString = UUID.randomUUID().toString();

	static String dirName = "";

	static String fileName = "";

	static int bufferLength = 0;

	@Before
	public void initial()
	{
		dirName = "D:/" + randomUUIDString;
		fileName = dirName + "/test.txt";
		bufferLength = 1000;
		// randomUUIDString = UUID.randomUUID().toString();
//        System.out.println("Random UUID String = " + randomUUIDString);
//		System.out.println("1111111112222222");
	}

//	@Test
//	public void test0(){
////		File dir = new File("D:/" + randomUUIDString);
//		System.out.println("D:/" + dirName);
//	}

	@Test
	public void test1()
	{
//		String randomUUIDString = UUID.randomUUID().toString();
		File dir = new File( dirName );
		System.out.println( "1111111" );
		this.createDir( dir );
		System.out.println( "2222222" );
		File file = new File( fileName );
		this.createFile( file );
	}

	public void createDir( File dir )
	{
		// 建立目錄
		// 建立檔案
		// 查詢檔案資訊
		// 刪除檔案
		Boolean flag = dir.mkdir();
		if( flag == true )
		{
			System.out.println( "建立成功" );
		}
		else
		{
			System.out.println( "建立失敗" );
		}
	}

	public void createFile( File file )
	{
		if( !file.exists() )
		{
			try
			{
				file.createNewFile();
				System.out.println( "文件已创建！" );
			}
			catch( IOException e )
			{
				e.printStackTrace();
			}
		}
	}

	@Test
	public void test2()
	{
		OutputStream fos = null;
		System.out.println( "test2():" + randomUUIDString );
		try
		{
			fos = new FileOutputStream( fileName );
			String output = "好好学习Javaxxx";
			byte[] buffer = output.getBytes();
			fos.write( buffer, 0, buffer.length );

			fos.close();
		}
		catch( FileNotFoundException e )
		{
			e.printStackTrace();
		}
		catch( IOException e )
		{
			e.printStackTrace();
		}
	}

	@Test
	public void test3()
	{
		try
		{
			InputStream fis = new FileInputStream( fileName );
			byte[] buffer = new byte[ bufferLength ];
			int length = 0;

			while( ( length = fis.read( buffer, 0, buffer.length ) ) != -1 )
			{
				String str = new String( buffer, 0, length );
				System.out.println( "test3():" + str );
			}
			fis.close();
		}
		catch( FileNotFoundException e )
		{
			e.printStackTrace();
		}
		catch( IOException e )
		{
			e.printStackTrace();
		}
	}

	@Test
	public void test4()
	{
		File file = new File( fileName );
		if( file.exists() )
		{
			System.out.println( "1111" );
			file.delete();
			System.out.println( "文件已删除！" );
		}
	}
}
