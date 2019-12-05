

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/staffSignUp")
public class staffSignUp extends HttpServlet {
	RequestDispatcher rd;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 try (
	              Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
	              ){
			 
			 String staff_id,first_name,middle_name,last_name,email,pwrd,salary,street_name;
			String house_no,pincode;
				String	phne;
			  staff_id=request.getParameter("staffid");
			  first_name=request.getParameter("firstname");
			  middle_name=request.getParameter("middlename");
			  last_name=request.getParameter("lastname");
			  email=request.getParameter("email");
			  pwrd=request.getParameter("password");
			 salary= (request.getParameter("salary"));
			  phne=request.getParameter("phone");
			  house_no=((request.getParameter("houseno")));
			  pincode=(request.getParameter("pincode"));
			  street_name=request.getParameter("streetname");
			  
			  String strSelect ="insert into staffsignup values(?,?,?,?,?,?,?,?,?,?,?)";
			  PreparedStatement pre=conn.prepareStatement(strSelect);
			  pre.setString(1,staff_id);
			  pre.setString(2,first_name);
			  pre.setString(3,middle_name);
			  pre.setString(4,last_name);
			  pre.setString(5,email);
			  pre.setString(11,pwrd);
			  pre.setString(6,salary);
			  pre.setString(10,phne);
			  pre.setString(7,house_no);
			  pre.setString(8,pincode);
			  pre.setString(9,street_name);
			  
			  pre.execute();
			  
			  String str="insert into login values(?,?,?)";
			  PreparedStatement prestmt=conn.prepareStatement(str);
			  if(staff_id.charAt(0)=='r' || staff_id.charAt(0)=='R')
			  {
				  prestmt.setString(2,"M");
			  }
			  prestmt.setString(3,staff_id);
			  prestmt.setString(1,pwrd);
			  prestmt.execute();
			  rd=request.getRequestDispatcher("homejsp.jsp");
			  rd.forward(request, response);
				//response.sendRedirect("homejsp.jsp");  
			  
			 
		 } catch (SQLException ex) {
		        ex.printStackTrace();
	     }
	
	}

}
