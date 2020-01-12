package project3;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class test11
{ 
    public static void main(String args[])
  {
    BufferedReader buf = new BufferedReader(new InputStreamReader(System.in));
    try{
      System.out.print("請輸入你要的數字:");
      int test = Integer.parseInt(buf.readLine()); 
      String[] s = new String[5];
      s[0]="aa";
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
      System.out.println(e.toString() + "陣列程式發生錯誤");  
    }
    catch (NumberFormatException e)
    {
      System.out.println(" parse int error!!  " + e);
    }    
    catch(ArithmeticException e)
    {
      System.out.println(e.toString() + "數學發生錯誤");  
    }
    catch(Exception e)
    {
      System.out.println(e.toString() + "程式發生錯誤");
    }
    finally{
    	   System.out.println("成功....");
    }
    
     
  }
}