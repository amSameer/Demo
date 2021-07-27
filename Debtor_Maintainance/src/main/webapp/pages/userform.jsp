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
	background-color: #3D33FF ;
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


<script>
function Validateusername(){
	var name=document.form1.name.value;  
	 
	if (name==null || name=="" && name.lenght<6){  
	  alert("Name can't be blank and must be at lease 6 char");  
	  return false;  
	}else{ 
		alert("Valid user name");	
	  return true;  
	  }  
	}
</script>




<script>
function ValidateEmail(inputText)
{
var mailformat = /^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$/;
if(inputText.value.match(mailformat))
{
alert("Valid email address!");
document.form1.email.focus();
return true;
}
else
{
alert("You have entered an invalid email address!");
document.form1.email.focus();
return false;
}
}
</script>


<script>

function Validatephoneno(){
	var phone=document.form1.phone.value;  
	 
	if ((/^\d{10}$/.test(phone))){  
	  alert("Valid Phone ");  
	  return true;  
	}else{ 
		alert("Invalid Phone Number");	
	  return false;  
	  }  
	}
</script>


</head>
<body>

<form action="addDebtor" modelAttribute="deb" method="post" name="form1">
  <div class="container">
  	<a href="viewForm">View All Records</a><br/>
    <h1>Add New Debtor</h1>
    <p>Please fill in this Details to create an Debtor account.</p>
    <hr>

   
   <tr>
	<td><label>Debtor Name</label></td>
	<td><input type="text" id="psw" name="name" placeholder="Enter Valid Name" onchange ="Validateusername()" pattern="^(?=^\w{3,20}$)[a-z0-9]+_?[a-z0-9]+$" required></td>
  
</tr>
   
   
    <!-- <label for="psw"><b>Debtor Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" id="psw" required> -->


	<label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Valid Email" name="email" id="email" onchange="ValidateEmail(document.form1.email)" required>
    
    <label for="psw-repeat"><b>Address</b></label>
    <input type="text" placeholder="Enter Valid Address" name="address1" id="psw-repeat" required>
    
    <tr>
	<td><label>Enter Phone Number</label></td>
	<td><input type="text" id="psw-repeat" name="phone" placeholder="Enter Valid Number"
   onchange="Validatephoneno()"></td>
</tr>
 
    
   <!--  <label for="psw-repeat"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter Phone No" name="phone" id="psw-repeat" required> -->
 
 
    <hr>
    <p>By creating an debtor account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn" value="Add Debtor">Add Debtor</button>
  </div>
  
 
</form>

</body>
</html>
