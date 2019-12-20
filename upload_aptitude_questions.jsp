<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVENT UPLOAD FORM</title>
</head>
<body>
<a href="super_admin">back</a>
<hr>

<fieldset><legend>UPLOAD EVENT FORM</legend>
<%
String questionsStr=request.getParameter("no_of_questions");
long questions=Long.parseLong(questionsStr);

%>
<form action="upload_aptitude_test" >
	<h3>ENTER DATE AND TIME IN DD-MM-YY HH:MM:SS</h3>
	<input type="hidden" name="event_name" value="<%=request.getParameter("event_name")%>">
	<input type="hidden" name="event_conduct_start" value="<%=request.getParameter("event_conduct_start")%>">
	<input type="hidden" name="event_conduct_end" value="<%=request.getParameter("event_conduct_end")%>">
	<input type="hidden" name="event_questions" value="<%=questions%>">
	<%for(int i=1;i<=questions;i++){
		String questionNo="question"+i;
		String answerNo="answer"+i;
		%>
	QUESTION<%=i%><input type="text" name="<%=questionNo%>">
	ANS<%=i%><input type="text" name="<%=answerNo%>"><br><br>
	<%}%>
	
  <input type="submit" value="upload">
</form>


</fieldset>


</body>
</html>