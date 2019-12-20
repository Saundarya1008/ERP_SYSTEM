<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STAFF SIGNUP</title>
</head>
<body>
<a href="student_login_form.jsp">back to login</a>
<hr>

<fieldset><legend>STAFF FORM</legend>
<%if(request.getAttribute("invalid_user")!=null){
	      
			String msg=(String)request.getAttribute("invalid_user");%>
				<h1><%=msg%></h1>
		<%}%>
<form action="staff_signup" 
     
     enctype="multipart/form-data">
	id:<input type="text" name="staff_id"><br><br>
	old password:<input type="password" name="staff_old_password"><br><br>
	New password:<input type="password" name="staff_new_password"><br><br>
  <input type="submit" value="update">
</form>


</fieldset>


</body>
</html>