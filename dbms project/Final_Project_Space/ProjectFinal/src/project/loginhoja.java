package project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginhoja
 */
@WebServlet("/loginhoja")
public class loginhoja extends HttpServlet {
	String uname,pass;
	RequestDispatcher rd;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (
		       
		         Connection conn = DriverManager.getConnection(
		               "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
		               "myuser", "xxxx");  
		         Statement stmt = conn.createStatement();
		      ) 
		       {         
			      uname=request.getParameter("username");
			      pass=request.getParameter("password");
			     
			String str="select * from login where uname=?";
			  PreparedStatement pre=conn.prepareStatement(str);
			  pre.setString(1,uname);
			  ResultSet rset=pre.executeQuery();
			  String query="select * from student where student_id=?";
			  PreparedStatement que=conn.prepareStatement(query);
			  que.setString(1, uname);
			  ResultSet result1=que.executeQuery();
			  
			 
			  
			  while(result1.next())
			  {
				  result.setUSN(uname);
				  result.setEmail(result1.getString(5));
				  result.setName(result1.getString(2));
				  result.setlname(result1.getString(4));
				  result.setBranch(result1.getString(6));
				  result.setRoom(result1.getString(7));
				  result.setSyear(result1.getString(9));
				  result.setphone(result1.getString(10));
				  
				  //System.out.println(result1.getString(5));
			  }
			 
			   while(rset.next())
			   {
				   if(uname.equalsIgnoreCase(rset.getString(3)) && pass.equals(rset.getString(1)))
				   {
					   System.out.println(rset.getString(3));
					   System.out.println(rset.getString(1));
					   response.sendRedirect("studentprofile.jsp");
				   }
				   else
				   {
					   response.sendRedirect("login-student.html");
				   }
			   }
	}catch(Exception e)
		{
		e.printStackTrace();
		}
	}

}
