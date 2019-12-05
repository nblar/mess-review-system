

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.util.*;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/demokare")
public class demokare extends HttpServlet {
	  

	ServletConfig config;
	 String page="demo.jsp";
	 List dataList = new ArrayList();
 	 public void init(ServletConfig config){
		 this.config=config;
	 } 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          
		  PrintWriter out = response.getWriter();
		  try (
	              Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
	              ){ response.setContentType("text/html");
			  ResultSet rs;
			  PrintWriter pri=response.getWriter() ;
			 
			  String sql = "select * from abcd";
		//rs= stmt.executeQuery(sql);
			  stmt.executeQuery (sql);

			  rs = stmt.getResultSet();
		
		while (rs.next ()){
			
		dataList.add(rs.getString("name"));

			  dataList.add(rs.getInt("age")); 
		}
		rs.close();
		
		
		

		
			  
		  } catch (Exception e){
			  e.printStackTrace();
		  }
		  request.setAttribute("data",dataList);
		  RequestDispatcher dispatcher = request.getRequestDispatcher("demo.jsp");

		//  if (dispatcher != null){

		  dispatcher.forward(request, response);
		 // }
		  
	}		  
	

	
	

}
