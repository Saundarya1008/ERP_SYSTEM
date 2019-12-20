<%@page import="java.sql.PreparedStatement"%>
<%@page import="sis.com.SisDbConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import="java.sql.Timestamp" %>
<%@page import="java.text.ParseException" %>
<%@page import="java.text.SimpleDateFormat" %>

<html>
	<body>
	<%
	ServletFileUpload sfuHelper=new ServletFileUpload(new DiskFileItemFactory());
	List<FileItem> list=sfuHelper.parseRequest(request);
	FileItem item1=list.get(0);
	FileItem item2=list.get(1);
	FileItem item3=list.get(2);
	FileItem item4=list.get(3);
	FileItem item5=list.get(4);
	FileItem item6=list.get(5);
	FileItem item7=list.get(6);
	FileItem item8=list.get(7);
	FileItem item9=list.get(8);
	
	String facultyNameFinal=item1.getString();
	String facultyDeptFinal=item2.getString();
	String facultySpecializationFinal=item3.getString();
	String facultyContactNoFinal=item4.getString();
	String facultyEmailIdFinal=item5.getString();
	String genderFinal=item6.getString();
	String facultyAddressFinal=item7.getString();
	String facultyDOB=item8.getString();
	
	long fileSize=item9.getSize();
	String fileName=item9.getName();
	InputStream fileDataIS=item9.getInputStream();
	
	
		
	%>
	<%
	Connection con=null;
	PreparedStatement pstmt=null;
	PreparedStatement pstmt2=null;
	int r=0;
    ResultSet rs=null;
	try{
	
		
		con=SisDbConnectionUtil.getConnection();

			String sql="insert into faculty(id,name,dept,specialization,contactNo,emailId,gender,address,dob,password,photo)values(faculty_seq.nextVal,?,?,?,?,?,?,?,?,?,?)";
			java.sql.Timestamp todoSqlTimestamp= new java.sql.Timestamp(new SimpleDateFormat("dd-MM-yyyy").parse(facultyDOB).getTime());
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1,facultyNameFinal);
			pstmt.setString(2,facultyDeptFinal);
			pstmt.setString(3,facultySpecializationFinal);
			pstmt.setString(4,facultyContactNoFinal);
			pstmt.setString(5,facultyEmailIdFinal);
			pstmt.setString(6,genderFinal);
			pstmt.setString(7,facultyAddressFinal);
			pstmt.setTimestamp(8,todoSqlTimestamp);
			pstmt.setString(9,"1234");
			pstmt.setBinaryStream(10,fileDataIS,(int)fileSize);
			r=pstmt.executeUpdate();
		    	
		
			
	}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
	catch(Exception e){System.out.println("other error: "+e.getMessage());}
	finally{
		try{
			SisDbConnectionUtil.closeConnection(con);
		}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
		
	}	
	RequestDispatcher rd=request.getRequestDispatcher("addFacultyMail");
	rd.forward(request,response);
	
	
	%>
	<!--request.setAttribute("emailId",facultyEmailIdFinal);
	request.setAttribute("name",facultyNameFinal);
	RequestDispatcher rd=request.getRequestDispatcher("addFacultyMail");
	rd.forward(request,response);-->
	
	
	
	
	</body>


</html>