

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class machateha
 */
@WebServlet("/machateha")
public class machateha extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 String pass,uname;
	   PrintWriter wri;
	   HttpSession session;
	   RequestDispatcher rd;
	   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			uname=request.getParameter("username");
			pass=request.getParameter("password");
			  wri=response.getWriter();
			 session=request.getSession();
			   try (
		              Connection conn = DriverManager.getConnection(
		            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
		                      "myuser", "xxxx");
		              
		                Statement stmt = conn.createStatement();
		              ){  String que="select * from mess_menu";
					  ResultSet rset=stmt.executeQuery(que);
					  while (rset.next()){
						  session.setAttribute("days",rset.getString("Dinner"));
						  rd=request.getRequestDispatcher("menujsp.jsp");
					  }
				   } catch (Exception e){e.printStackTrace();}
			   }
}
