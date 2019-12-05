package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class staffloginhoja
 */
@WebServlet("/staffloginhoja")
public class staffloginhoja extends HttpServlet {
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
				 staffresult.setfname(uname);
			  }
			   while(rset.next())
			   {
				   if(uname.equalsIgnoreCase(rset.getString(3)) && pass.equals(rset.getString(1)))
				   {
					   System.out.println(rset.getString(3));
					   System.out.println(rset.getString(1));
					   response.sendRedirect("messprofile.jsp");
				   }
				   else
				   {
					   response.sendRedirect("login-staff.html");
				   }
			   }
		}catch(Exception e)
		{e.printStackTrace();}

	}

}
