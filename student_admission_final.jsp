<%@page import="java.sql.PreparedStatement"%>
<%@page import="sis.com.SisDbConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>

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
	
	String studentNameFinal=item1.getString();
	String studentMarksFinal=item2.getString();
	String studentContactNoFinal=item3.getString();
	String studentEmailIdFinal=item4.getString();
	String genderFinal=item5.getString();
	String fatherNameFinal=item6.getString();
	String fatherContactNoFinal=item7.getString();
	String studentAddressFinal=item8.getString();
	
	long fileSize=item9.getSize();
	String fileName=item9.getName();
	InputStream fileDataIS=item9.getInputStream();
	
	
		
	%>
	<%
	Connection con=null;
	PreparedStatement pstmt=null;
	int r=0;
	String branch="";
	long studentMarks=0;
	try{
		con=SisDbConnectionUtil.getConnection();
		studentMarks=Long.parseLong(studentMarksFinal);
		if(studentMarks>=160){
				branch="CSE";
			}else if(studentMarks>=130 && studentMarks<160){
				branch="ECE";
			}else if(studentMarks>=90 && studentMarks<130){
				branch="EEE";
			}
			String sql="insert into student_admission(id,name,marks,contactNo,emailId,gender,branch,fatherName,fatherContactNo,address,password,studentPhoto)values(s_seq.nextval,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,studentNameFinal);
			pstmt.setString(2,""+studentMarksFinal);
			pstmt.setString(3,studentContactNoFinal);
			pstmt.setString(4,studentEmailIdFinal);
			pstmt.setString(5,genderFinal);
			pstmt.setString(6,branch);
			pstmt.setString(7,fatherNameFinal);
			pstmt.setString(8,fatherContactNoFinal);
			pstmt.setString(9,studentAddressFinal);
			pstmt.setString(10,"1234");
			pstmt.setBinaryStream(11,fileDataIS,(int)fileSize);
			r=pstmt.executeUpdate();
			
		
			
	}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
	catch(Exception e){System.out.println("other error: "+e.getMessage());}
	finally{
		try{
			SisDbConnectionUtil.closeConnection(con);
		}catch(SQLException e){System.out.println("db error: "+e.getMessage());}
		
	}	
	
	RequestDispatcher rd=rd=request.getRequestDispatcher("studentAdmissionMail");
	rd.forward(request,response);
	
	%>
	
	<!--UPLOAD?<%=(r==1)?"Success":"Failed" %>-->
	
	
	</body>


</html>