
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/check")
public class check extends HttpServlet {
	
   String pass,uname;
   PrintWriter wri;
   RequestDispatcher rd;
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
			  ResultSet rset=stmt.executeQuery(que);
	    	  while(rset.next())
	    	  {   
	    		  if((rset.getString("uname")).equalsIgnoreCase(uname) && (rset.getString("passwrd")).equals(pass))
	    		  { response.isCommitted();
	    			response.sendRedirect("Home.html");  
	    		  }
	    		  else
	    		  {  response.isCommitted();
	    			  response.sendRedirect("menujsp.jsp");
	    		  }
	    	  }
		  
		  } catch(SQLException ex) {
		         ex.printStackTrace();
		      }
	}
}
