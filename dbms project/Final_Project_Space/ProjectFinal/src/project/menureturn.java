package project;

import java.util.ArrayList;

public class menureturn {

	static ArrayList<String> ar=new ArrayList<String>();
	public static void setUSN(ArrayList<String> str1)
	{
		ar=str1;
	}
	public static String getUSN(int i)
	{
		return ar.get(i);
	}
	
}
