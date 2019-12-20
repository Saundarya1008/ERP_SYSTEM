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

<form action="add_faculty.jsp" method="post"
     
     enctype="multipart/form-data">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to add a new faculty to the college.</p>
    <hr>

    <label for="faculty_name"><b>Faculty Name</b></label>
    <input type="text" placeholder="Enter Faculty Name" name="faculty_name" required>
	
	<label for="faculty_dept"><b>Faculty Department</b></label><br>
    <input type="radio" placeholder="Enter Faculty Department" name="faculty_dept" value="CSE" required checked>CSE
    <input type="radio" placeholder="Enter Faculty Department" name="faculty_dept" value="ECE" required>ECE
    <input type="radio" placeholder="Enter Faculty Department" name="faculty_dept" value="EEE" required>EEE
	<br><br>
	<label for="faculty_specialization"><b>Faculty Specialization</b></label>
    <input type="text" placeholder="Enter Faculty Specialization" name="faculty_specialization" required>
	
	<label for="faculty_contact_no"><b>Faculty Contact No</b></label>
    <input type="text" placeholder="Enter Faculty Contact Number" name="faculty_contact_no" required>
	
	<label for="faculty_email"><b>Faculty Email</b></label>
    <input type="text" placeholder="Enter Faculty Email" name="faculty_email" required>
	
	<label for="gender"><b>Faculty Gender</b></label><br>
    <input type="radio" placeholder="Enter Faculty Gender" name="gender" value='m' required checked>MALE
    <input type="radio" placeholder="Enter Faculty Gender" name="gender" value='f' required>FEMALE
    <input type="radio" placeholder="Enter Faculty Gender" name="gender" value='o' required>OTHERS
	<br><br>
	<label for="faculty_address"><b>Faculty Address</b></label>
    <input type="text" placeholder="Enter Faculty Address" name="faculty_address" required>
	
	<label for="faculty_dob"><b>Faculty Date of Birth</b></label>
    <input type="text" placeholder="Enter Faculty Date of Birth" name="faculty_dob" required>
	
	<label for="faculty_photo"><b>Faculty Photo</b></label><br>
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














