<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	background-image: url('./images/dp3.jpg');
	background-repeat: no-repeat;
	background-size: 100%;
	font-family: "Poppins", sans-serif;
	height: 100vh;
	font-family: Arial, Helvetica, sans-serif;
	background-color: black;
}

* {
  box-sizing: border-box;
}



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
  background-color: #87cefa;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
 
  background-color: rgb(0, 0, 64);
  
  
  
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<form action="addDebBank" modelAttribute="ban" method="post">
  <div class="container">
  	<a href="viewForm1">View All Records</a><br/>
    <h1>Add Account Details</h1>
    <p>Please fill in this Details to create an Bank account.</p>
    <hr>

    <label for="psw"><b>Debtor ID</b></label>
    <input type="text" placeholder="Enter DID" name="id" id="psw" required>

	<label for="email"><b>Account Number</b></label>
    <input type="text" placeholder="Enter Account No" name="accountnumber" id="email" required>
    
    <label for="psw-repeat"><b>Name of The Bank</b></label>
    <input type="text" placeholder="Enter Bank Name" name="bankname" id="psw-repeat" required>
    
    <label for="psw-repeat"><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="address" id="psw-repeat" required>
  
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Add Account</button>
  </div>
  
 
</form>

</body>
</html>
