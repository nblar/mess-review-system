package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class callreview
 */
@WebServlet("/callreview")
public class callreview extends HttpServlet {
	private static final String abc="E6E6FA" ;
	PrintWriter out; ArrayList<String> ar=new ArrayList<String>();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   			try (
   				       
   			         Connection conn = DriverManager.getConnection(
   			               "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
   			               "myuser", "xxxx");  
   			         Statement stmt = conn.createStatement();
   			      ){
   				out=response.getWriter();
   				out.println("<Html>");
   				out.println("<Html>");
   				CallableStatement csmt=null;
   				csmt=conn.prepareCall("{call pull_suggestion()}");
   				ResultSet rset=csmt.executeQuery();
   			out.println("<style>");
                out.println("table, th, td {border: 0px solid black}");
                out.println("</style>");
                out.println("<body bgcolor=#"+abc+">");
                
            //  out.println("bgcolor= "+abc);
   				out.println("<table>");
   				while(rset.next())
   				{
   					//out.println(rset.getString(1));
   					out.println("<TR><TD>"+rset.getString(1)+"</TD><TD>");
   				}
   				out.println("</table>");
   				
   				out.println("</body>");
   				//response.sendRedirect("feedbackjsp.jsp");
   			}catch(Exception e)
   			
   			{e.printStackTrace();}
	}
	}


