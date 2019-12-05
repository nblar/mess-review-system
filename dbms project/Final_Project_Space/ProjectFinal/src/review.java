

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class review
 */
@WebServlet("/review")
public class review extends HttpServlet {
	String day,suggestion;
	int rating;
	RequestDispatcher rd;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try (
	              Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
	              ){
			rating=Integer.parseInt(request.getParameter("rating"));
			day= request.getParameter("day");
			suggestion=request.getParameter("suggestion");
			
			String que="insert into review values(?,?)";
			String que2="insert into suggestion values(?)";
			PreparedStatement pre=conn.prepareStatement(que);
			PreparedStatement pre1=conn.prepareStatement(que2);
			pre.setString(1,day);
			pre.setInt(2,rating);
			pre1.setString(1,suggestion);
			
			pre.execute();
			pre1.execute();
			
			rd=request.getRequestDispatcher("home-after-login.jsp");
			rd.forward(request, response);
		} catch (Exception e){
	            	  e.printStackTrace();
	              }
	}

}
