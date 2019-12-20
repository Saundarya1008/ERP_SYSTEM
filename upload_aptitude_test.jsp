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

<form action="upload_aptitude_questions.jsp" method="post">
	<h3>ENTER DATE AND TIME IN DD-MM-YY HH:MM:SS</h3>
	name:<input type="text" name="event_name" readonly='readonly' value="regular aptitude test"><br><br>
	conduct date and start time:<input type="text" name="event_conduct_start"><br><br>
	conduct date and end time:<input type="text" name="event_conduct_end"><br><br>
	NO OF QUESTIONS:<input type="text" name="no_of_questions"><br><br>
	
  <input type="submit" value="upload">
</form>


</fieldset>


</body>
</html>