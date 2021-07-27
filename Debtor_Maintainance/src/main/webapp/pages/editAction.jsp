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

 
<form:form  action="editDebtor" modelAttribute="editDebForm" >

<table border="1" width="80%" align="center">
 <caption style="background-color:tomato">Update Debtor </caption>
    <tr>
		 
		<td><form:hidden path="id" /></td> 
	</tr>
	 
	<tr>
		<td><form:label path="name">Debtor Name</form:label></td>
		<td><form:input path="name" /></td> 
	</tr>
	<tr>
		<td><form:label path="address1">Address Line1</form:label></td>
		<td><form:input path="address1" /></td> 
	</tr>
	<tr>
		<td><form:label path="email">Debtor Mail</form:label></td>
		<td><form:input path="email" /></td> 
	</tr>
	
	<tr>
		<td><form:label path="phone">Debtor Phone</form:label></td>
		<td><form:input path="phone" /></td> 
	</tr>
	 
	 
	 
	 <tr>
		<td colspan="2">
			<input type="submit" value="Update Debtor"/>
		</td>
	</tr>
	 		 
			 
		 
	</table>
	 

</form:form>
</body>
</html>