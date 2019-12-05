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
 * Servlet implementation class rating
 */
@WebServlet("/rating")
public class rating extends HttpServlet {
	ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs6; RequestDispatcher rd;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
		   try (
				   Connection conn = DriverManager.getConnection(
	            		  "jdbc:mysql://localhost:3306/mess?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
	                      "myuser", "xxxx");
	              
	                Statement stmt = conn.createStatement();
				   	 ){
			             String st="select * from countavg where day='Monday'"; 
			            
			             rs=stmt.executeQuery(st);
			           rs.next();
			             reteriverating.setMonday(rs.getString("avge"));
			             String st1="select * from countavg where day='Tuesday'"; 
			             rs1=stmt.executeQuery(st1);
			             rs1.next(); 
			             reteriverating.setTuesday(rs1.getString("avge"));
			             String st2="select * from countavg where day='Wednesday'"; 
			             rs2=stmt.executeQuery(st2);
			             rs2.next(); 
			             reteriverating.setWednesday(rs2.getString("avge"));
			             String st3="select * from countavg where day='Thursday'"; 
			             rs3=stmt.executeQuery(st3);
			             rs3.next(); 
			             reteriverating.setThursday(rs3.getString("avge"));
			             String st4="select * from countavg where day='Friday'"; 
			             rs4=stmt.executeQuery(st4);
			             rs4.next(); 
			             reteriverating.setFriday(rs4.getString("avge"));
			             String st5="select * from countavg where day='Saturday'"; 
			             rs5=stmt.executeQuery(st5);
			             rs5.next(); 
			             reteriverating.setSaturday(rs5.getString("avge"));
			             String st6="select * from countavg where day='Sunday'"; 
			             rs6=stmt.executeQuery(st6);
			             rs6.next(); 
			             reteriverating.setSunday(rs6.getString("avge"));
			             
			             
			             
			             rd=request.getRequestDispatcher("homejsp.jsp");
			             rd.forward(request, response);
			             
			             
		   }catch(Exception e){e.printStackTrace();}
	}

}
