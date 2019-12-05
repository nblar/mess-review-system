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
 * Servlet implementation class loginplz
 */
@WebServlet("/loginplz")
public class loginplz extends HttpServlet {
	private static final long serialVersionUID = 1L;
   String uname,pass ;  RequestDispatcher rd; ResultSet rset;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		uname=request.getParameter("username");
		pass=request.getParameter("password");
		 
		 
		   try (
	              Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
				   	
				 ){
			   
				  String que="select * from login";
				  rset=stmt.executeQuery(que);
				  PreparedStatement state=conn.prepareStatement("select * from student where student_id=?");
		    	  state.setString(1,uname);
		    	     ResultSet set=state.executeQuery();
		    	     result.setUSN(uname);
		    	     set.next();
		    	     result.setName(set.getString("fname"));
				     result.setEmail(set.getString("email"));
				     result.setBranch(set.getString("branch"));
				     result.setRoom(set.getString("room_no"));
				     result.setSyear(set.getString("studying_year"));
				     result.setphone(set.getString("phone_no"));
				     result.setlname(set.getString("lname"));
				  while(rset.next()){
					  if(rset.getString("uname").equalsIgnoreCase(uname) && rset.getString("password").equals(pass))
					  {
						  rd=request.getRequestDispatcher("studentprofile.jsp");
						  rd.forward(request, response);
						  System.exit(0);
					  }
				  }
				  
		   } catch (Exception e){e.printStackTrace();}
	              
	}

}
