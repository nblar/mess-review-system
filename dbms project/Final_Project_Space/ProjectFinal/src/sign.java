

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/sign")
public class sign extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 try (
	              Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
	              ){
			 
			 String usn,first_name,middle_name,last_name,email,pwrd,branch,gender,room_no;
			int studying_year;
			String phone_no;
			 usn=request.getParameter("usn");
			  first_name=request.getParameter("firstname");
			  middle_name=request.getParameter("middlename");
			  last_name=request.getParameter("lastname");
			  email=request.getParameter("email");
			  pwrd=request.getParameter("password");
			  branch=request.getParameter("branch");
			  room_no=request.getParameter("roomNo");
			  studying_year=Integer.parseInt(request.getParameter("Studying-Year"));
			  gender=request.getParameter("gender");
			  phone_no=request.getParameter("phone");
			  
			  String strSelect ="insert into student values(?,?,?,?,?,?,?,?,?,?,?)";
			  PreparedStatement pre=conn.prepareStatement(strSelect);
			  pre.setString(1,usn);
			  pre.setString(2,first_name);
			  pre.setString(3,middle_name);
			  pre.setString(4,last_name);
			  pre.setString(5,email);
			  pre.setString(11,pwrd);
			  pre.setString(6,branch);
			  pre.setString(7,room_no);
			  pre.setInt(9,studying_year);
			  pre.setString(8,gender);
			  pre.setString(10,phone_no);
			  
			  pre.execute();
			  System.out.print(room_no);
			  
			  String str="insert into login values(?,?,?)";
			  PreparedStatement prestmt=conn.prepareStatement(str);
			  if(usn.charAt(1)=='r' || usn.charAt(1)=='R'){
				  prestmt.setString(2,"R");
			  }
			  prestmt.setString(3,usn);
			  prestmt.setString(1,pwrd);
			  prestmt.execute();
				response.sendRedirect("homejsp.jsp");  
			  
				conn.close();
		 } catch (SQLException ex) {
		        ex.printStackTrace();
	     }
	}

}
