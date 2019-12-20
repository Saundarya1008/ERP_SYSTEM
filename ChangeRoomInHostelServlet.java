import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import sis.com.SisDbConnectionUtil;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class AllotHostelServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		
		String studentIdStr=request.getParameter("student_id");
		long studentId=Long.parseLong(studentIdStr);
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		StringBuffer htmlCode=new StringBuffer();
		htmlCode.append("<html>");
		htmlCode.append("<head><style>table {border-collapse: collapse;width: 100%;}th, td {padding: 8px;text-align: left;border-bottom: 1px solid #ddd;}</style></head>");
		htmlCode.append("<body>");
		htmlCode.append("<table>");
		htmlCode.append("<th>HOSTEL NO</th>");
		htmlCode.append("<th>ROOM NO</th>");
		htmlCode.append("<th>BED NO</th>");
        
		long roomNoEarlier=0;String hostelFixed="";
		try{
			con=SisDbConnectionUtil.getConnection();
			String sql="select room_no,hostel from hostel_management where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setLong(1,studentId);
			rs=pstmt.executeQuery();
			if(rs.next()){
				roomNoEarlier=rs.getLong("room_no");
				String hostelFixed=rs.getString("hostel");
			}
			
			
			
		}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
		catch(Exception e){System.out.println("other error: "+e.getMessage());}		
		finally{
			try{
				SisDbConnectionUtil.closeConnection(con);
			}catch(SQLException e){System.out.println("error while closing connection: "+e.getMessage());}
		
		}
		
		
		
		try{
			con=SisDbConnectionUtil.getConnection();
			String sql="select * from hostel_management where hostel=? and alloted=? and room_no!=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,hostelFixed);
			pstmt.setString(2,"n");
			pstmt.setLong(3,roomNoEarlier);
			rs=pstmt.executeQuery();
			htmlCode.append("<form action='student_hostel_allotment'>");
			htmlCode.append("<input type='hidden' name='student_id' value="+studentId+">");
			while(rs.next()){	
			String hostel=rs.getString("hostel");
			long roomNo=rs.getLong("room_no");
			long bedNo=rs.getLong("bed_no");
			String allotedHostel=hostel+":"+roomNo+":"+bedNo;
			htmlCode.append("<tr><td><input type='radio' name='alloted_hostel' value="+allotedHostel+">"+hostel+"</td>");
			htmlCode.append("<td>"+roomNo+"</td>");
			htmlCode.append("<td>"+bedNo+"</td></tr>");
			}
			htmlCode.append("<input type='submit' value='submit'>");
			htmlCode.append("</form>");
			htmlCode.append("</table>");
				
		}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
		catch(Exception e){System.out.println("other error: "+e.getMessage());}		
		finally{
			try{
				SisDbConnectionUtil.closeConnection(con);
			}catch(SQLException e){System.out.println("error while closing connection: "+e.getMessage());}
		
		}
		
		htmlCode.append("</body>");
		htmlCode.append("</html>");
		pw.print(htmlCode);
		
	}
}
	
	
	
