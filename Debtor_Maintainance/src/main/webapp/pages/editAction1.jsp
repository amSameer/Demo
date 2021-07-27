<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    
    body {

 background-image:
    url('./images/dp5.jpg');
  background-repeat: no-repeat;
  background-size: 120%;
 font-family: "Poppins", sans-serif;
  height: 100vh;
  
 }
     </style>
<body>

 
<form:form  action="editBankDetails" modelAttribute="editBankForm" >

<table border="1" width="50%" align="center">
 <caption style="background-color: tomato "> Update Debtor Bank details</caption>
    
	 
	<tr>
		<td><form:label path="id">Debtor ID</form:label></td>
		<td><form:input path="id" /></td> 
	</tr>
	<tr>
		<td><form:label path="accountnumber">Debtor Acc Number</form:label></td>
		<td><form:input path="accountnumber" /></td> 
	</tr>
	<tr>
		<td><form:label path="bankname">Bank Name</form:label></td>
		<td><form:input path="bankname" /></td> 
	</tr>
	
	<tr>
		<td><form:label path="address">Address</form:label></td>
		<td><form:input path="address" /></td> 
	</tr>
	 
	 
	 
	 <tr>
		<td colspan="2">
			<input type="submit" value="Update Bank Details"/>
		</td>
	</tr>
	 		 
			 
		 
	</table>
	 

</form:form>
</body>
</html>