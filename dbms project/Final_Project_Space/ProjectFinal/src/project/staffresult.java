package project;

public class staffresult {

static String fname="";
static String lname="";
static String staffid="";
static String email="";
static String salary="";
static String addre="";
static String contact="";
	public static void setfname(String str1)
	{
		fname=str1;
	}
	public static String getfname()
	{
		return fname.toUpperCase();
	}
	public static void setlname(String str1)
	{
		lname=str1;
	}
	public static String getlname()
	{
		return lname.toUpperCase();
	}
	public static void setstaffid(String str1)
	{
		staffid=str1;
	}
	public static String getstaffid()
	{
		return staffid.toUpperCase();
	}
	public static void setstaffemail(String str1)
	{
		email=str1;
	}
	public static String getstaffemail()
	{
		return email;
	}
	public static void setstaffsalary(String str1)
	{
		salary=str1;
	}
	public static String getstaffsalary()
	{
		return salary;
	}
	public static void setstaffaddr(String str1,String str2,String str3)
	{
	   addre= str1+","+str3+","+str2;
	}
	public static String getstaffaddr()
	{
		return addre;
	}
	public static void setstaffcontact(String str1)
	{
		contact=str1;
	}
	public static String getstaffcontact()
	{
		return contact;
	}
}
