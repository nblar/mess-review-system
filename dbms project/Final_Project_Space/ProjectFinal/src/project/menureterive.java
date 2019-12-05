package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class menureterive
 */
@WebServlet("/menureterive")
public class menureterive extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    ArrayList<String> ar=new ArrayList<String>();
    RequestDispatcher rd;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		   try (
	              Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
				
				  
	              ){   ResultSet rs;
			   String str="select * from messmenu where day_no=?";
			   PreparedStatement state=conn.prepareStatement(str);
			   for(int i=1;i<=7;i++){
					  state.setInt(1,i);   
					  rs=state.executeQuery();
					  rs.next();
					  ar.add(rs.getString("breakfast"));
					  ar.add(rs.getString("lunch"));
					  ar.add(rs.getString("dinner"));
			   }
			   menureturn.setUSN(ar);
		       rd=request.getRequestDispatcher("messmenu.jsp");
		       rd.forward(request, response);
		   }catch(Exception e){
	            	  e.printStackTrace();
	              }
	}

}
