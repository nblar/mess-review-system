package project;

import java.util.ArrayList;

public class reviewrete {
public static ArrayList<String> arr = new ArrayList<String>();

static void setreview(ArrayList<String> ar)
{
	arr=(ArrayList<String>) ar.clone();
}

public static ArrayList getreview()
{
	return arr;
}

}
