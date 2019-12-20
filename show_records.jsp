<%@page import="java.sql.PreparedStatement"%>
<%@page import="sis.com.SisDbConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>



<html>

	<body>
	
	
	


	<%
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		con=SisDbConnectionUtil.getConnection();
		String sql="select * from student_admission";
		pstmt=con.prepareStatement(sql);
		
		rs=pstmt.executeQuery();
		%>
		<table>
		<tr>
		<th>id</th>
		<th>name</th>
		
		<th>contact no</th>
		<th>email-id</th>
		
		<th>student photo</th>
		</tr>
		<%
		while(rs.next()){
			long id=rs.getLong("id");
			String name=rs.getString("name");
			
			String contactNO=rs.getString("contactNo");
			String email_id=rs.getString("emailId");
			
			%>
			<tr>
			<td><%=id%></td>
			<td><%=name%></td>
			<td><%=contactNO%></td>
			<td><%=email_id%></td>
			<td><img src='image_processing.jsp?id=<%=id%>' height='100px' width='100px'></td>
			
			
			</tr>
			<%
		}
			
	}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
	catch(Exception e){System.out.println("other error: "+e.getMessage());}
	finally{
		try{
			SisDbConnectionUtil.closeConnection(con);
		}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
		
	}			
	%>
		</table>
	</body>

</html>