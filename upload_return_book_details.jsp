<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<hr>

<%
String studenIdStr=request.getParameter("student_id");
long studentId=Long.parseLong(studenIdStr);
String noOfBooksStr=request.getParameter("book_nos");
int noOfBooks=Integer.parseInt(noOfBooksStr);

%>
<form action="books_submission" >
	<input type="hidden" name="student_id" value="<%=studentId%>">
	<%for(int i=1;i<=noOfBooks;i++){
		String bookNo="book"+i;
		%>
	BOOK ID<input type="text" name="<%=bookNo%>"><br>
	<%}%>
	<input type="hidden" name="count" value="<%=noOfBooks%>">
  <input type="submit" value="upload">
</form>


</fieldset>


</body>
</html>