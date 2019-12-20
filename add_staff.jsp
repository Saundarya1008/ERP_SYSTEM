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
	
	String staffNameFinal=item1.getString();
	String staffDeptFinal=item2.getString();
	String staffContactNoFinal=item3.getString();
	String staffEmailIdFinal=item4.getString();
	String genderFinal=item5.getString();
	String staffAddressFinal=item6.getString();
	String staffDOB=item7.getString();
	
	long fileSize=item8.getSize();
	String fileName=item8.getName();
	InputStream fileDataIS=item8.getInputStream();
	
	
		
	%>
	<%
	Connection con=null;
	PreparedStatement pstmt=null;
	PreparedStatement pstmt2=null;
	int r=0;
    ResultSet rs=null;
	try{
	
		
		con=SisDbConnectionUtil.getConnection();

			String sql="insert into staff(id,name,dept,contactNo,emailId,gender,address,dob,password,photo)values(staff_sequence.nextVal,?,?,?,?,?,?,?,?,?)";
			java.sql.Timestamp todoSqlTimestamp= new java.sql.Timestamp(new SimpleDateFormat("dd-MM-yyyy").parse(staffDOB).getTime());
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1,staffNameFinal);
			pstmt.setString(2,staffDeptFinal);
			pstmt.setString(3,staffContactNoFinal);
			pstmt.setString(4,staffEmailIdFinal);
			pstmt.setString(5,genderFinal);
			pstmt.setString(6,staffAddressFinal);
			pstmt.setTimestamp(7,todoSqlTimestamp);
			pstmt.setString(8,"1234");
			pstmt.setBinaryStream(9,fileDataIS,(int)fileSize);
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