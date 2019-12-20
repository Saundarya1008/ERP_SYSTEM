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

<form action="add_courses" >
  <div class="container">
    <h1>Add Course</h1>
    <p>Please fill in this form to add a new course to the college.</p>
    <hr>

    <label for="course_id"><b>Course Id</b></label>
    <input type="text" placeholder="Enter Course Id" name="course_id" required>
	
	<label for="course_name"><b>Course Name</b></label>
    <input type="text" placeholder="Enter Course Name" name="course_name" required>
	
	<label for="course_slot"><b>Course Slot</b></label>
    <input type="text" placeholder="Enter Course Slot" name="course_slot" required>
	
	<label for="course_dept"><b>Course Dept</b></label>
    <input type="text" placeholder="Enter Course Dept" name="course_dept" required>
	
	<label for="course_struct"><b>Course Structure</b></label>
    <input type="text" placeholder="Enter Course Structure" name="course_struct" required>
	
	<label for="course_type"><b>Course Type</b></label>
    <input type="text" placeholder="Enter Course Type" name="course_type" required>
	
	<label for="course_credits"><b>Course Credits</b></label><br>
    <input type="text" placeholder="Enter Course Credits" name="course_credits" required>
	
	<label for="course_fac_id"><b>Course Faculty Id</b></label><br>
    <input type="text" placeholder="Enter Faculty id" name="course_fac_id" required>
	
   
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <a href="super_admin_page"><button type="button" class="cancelbtn">Cancel</button></a>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>








































