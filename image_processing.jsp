<%@page import="java.sql.PreparedStatement"%>
<%@page import="sis.com.SisDbConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>



<%
	String idStr=(String)request.getParameter("id");
	long id=Long.parseLong(idStr);
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		con=SisDbConnectionUtil.getConnection();
		String sql="select * from student_admission where id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setLong(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			InputStream fileDataIS=rs.getBinaryStream("studentPhoto");
			response.setContentType("image/jpg");
			ServletOutputStream sos=response.getOutputStream();
			byte []buff=new byte[1024*1024];
			int length;
			while((length=fileDataIS.read(buff))!=-1){
				sos.write(buff,0,length);
			}
			sos.close();
		}
		
	
	
	}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
	catch(Exception e){System.out.println("other error: "+e.getMessage());}
	finally{
		try{
			SisDbConnectionUtil.closeConnection(con);
		}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
		
	}		


%>