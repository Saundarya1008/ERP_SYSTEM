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

  <form action="upload_events" >
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an event.</p>
    <hr>

    <label for="event_name"><b>Event Name</b></label>
    <input type="text" placeholder="Enter Event Name" name="event_name" required>
	
	<label for="event_details"><b>Event Details</b></label>
    <input type="text" placeholder="Enter Event Details" name="event_details" required>
	
	<label for="event_conduct"><b>Event Conduct Date and Time</b></label>
    <input type="text" placeholder="Enter Event Conduct Date and Time" name="event_conduct" required>
	
	<label for="event_register"><b>Event Last Registration Date and Time</b></label>
    <input type="text" placeholder="Enter Event Last Registration Date and Time" name="event_register" required>
	
    
    
    

    <div class="clearfix">
      <a href="super_admin_page"><button type="button" class="cancelbtn">Cancel</button></a>
      <button type="submit" class="signupbtn">Add Event</button>
    </div>
  </div>
</form>

</body>
</html>
















