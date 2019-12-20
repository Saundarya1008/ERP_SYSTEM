<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>

<form action="student_admission_final.jsp" method="post"
     
     enctype="multipart/form-data">
  <div class="container">
    <h1>STUDENT ADMISSION</h1>
    <p>Please fill in this form to add a new student to the college.</p>
    <hr>

    <label for="student_name"><b>Student Name</b></label>
    <input type="text" placeholder="Enter Student Name" name="student_name" required>
	
	<label for="student_marks"><b>Student Marks</b></label>
    <input type="text" placeholder="Enter Student's Marks" name="student_marks" required>
	
	<label for="student_contact_no"><b>Student Contact No</b></label>
    <input type="text" placeholder="Enter Student Contact Number" name="student_contact_no" required>
	
	<label for="student_email"><b>Student Email</b></label>
    <input type="text" placeholder="Enter Student Email" name="student_email" required>
	
	<label for="gender"><b>Student Gender</b></label><br>
    <input type="radio"  name="gender" value='m' required checked>MALE
    <input type="radio"  name="gender" value='f' required>FEMALE
    <input type="radio"  name="gender" value='o' required>OTHERS
	<br><br>
	<label for="student_father_name"><b>Father's Name</b></label>
    <input type="text" placeholder="Enter Father's Name" name="student_father_name" required>
	
	<label for="student_father_no"><b>Father's Contact No</b></label>
    <input type="text" placeholder="Enter Father's No" name="student_father_no" required>

	<label for="faculty_address"><b>Student Address</b></label>
    <input type="text" placeholder="Enter Faculty Address" name="faculty_address" required>
	
	
	<label for="faculty_photo"><b>Student Photo</b></label><br>
    <input type="file" placeholder="photo" name="faculty_photo" required>
	
   
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <a href="super_admin_page"><button type="button" class="cancelbtn">Cancel</button></a>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>


































