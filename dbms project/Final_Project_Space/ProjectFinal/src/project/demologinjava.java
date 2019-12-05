package project;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/demologinjava")
public class demologinjava extends HttpServlet {
   
		
   		String uname,pass;
   		RequestDispatcher rd;
   		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   			try (
   				       
   			         Connection conn = DriverManager.getConnection(
   			               "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
   			               "myuser", "xxxx");  
   			         Statement stmt = conn.createStatement();
   			      ) {
   				 uname=request.getParameter("username");
   			      pass=request.getParameter("password");
   			      String str="select * from login where uname=?";
   				  PreparedStatement pre=conn.prepareStatement(str);
   				  pre.setString(1,uname);
   				  ResultSet rset=pre.executeQuery();
   				  String query="select * from staffsignup where staff_id=?";
   				  PreparedStatement que=conn.prepareStatement(query);
   				  que.setString(1,uname);
   				  ResultSet result1=que.executeQuery();
   				  while(result1.next())
   				  {
   					staffresult.setstaffid(result1.getString(1));
   					 staffresult.setfname(result1.getString(2));
   					staffresult.setlname(result1.getString(4));
   					staffresult.setstaffemail(result1.getString(5));
   					staffresult.setstaffsalary(result1.getString(6));
   					staffresult.setstaffaddr(result1.getString(7),result1.getString(8),result1.getString(9));
   					staffresult.setstaffcontact(result1.getString(10));
   				  }
   				  if(uname.equalsIgnoreCase("admin"))
   				  {
   					response.sendRedirect("admin.jsp");
   				  }
   				
   				  response.sendRedirect("messprofile.jsp");
   			}catch(Exception e)
   			{e.printStackTrace();}

   		}
	
}
