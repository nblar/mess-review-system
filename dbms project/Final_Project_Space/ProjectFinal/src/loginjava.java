
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
import javax.servlet.http.HttpSession;


@WebServlet("/loginjava")
public class loginjava extends HttpServlet {
	
   String pass,uname;
   PrintWriter wri;
   HttpSession session;
  
   RequestDispatcher rd;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		uname=request.getParameter("username");
		pass=request.getParameter("password");
		 
		 session=request.getSession();
		 //session1=request.getSession();
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
	    		  if((rset.getString("uname")).equalsIgnoreCase(uname) && (rset.getString("password")).equals(pass))
	    		  {
	    			  String str=(rset.getString("type"));
	    			  
	    			  if(str.equalsIgnoreCase("r"))
	    			  {  
	    				  rd=request.getRequestDispatcher("studentprofile.jsp");
	    				  rd.forward(request, response);
	    				  System.exit(0);
	    			  }
	    			  else
	    			  {
	    				  rd=request.getRequestDispatcher("messprofile.jsp"); 
	    				  rd.forward(request, response);
	    				  System.exit(0);
	    			  }
	    		
	    		  }
	    	  }
	    	  rd=request.getRequestDispatcher("login.html");
		      rd.forward(request, response);
		  
		  } catch(SQLException ex) {
		         ex.printStackTrace();
		      }
	}
}
