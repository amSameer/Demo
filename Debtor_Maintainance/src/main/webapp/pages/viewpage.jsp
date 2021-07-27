<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.pack.dao.DebtorDao,java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head >
        <title>SELECT Operation</title>
        <style > 
        body{
         background-image: url('images/dp6.jpg');
          background-size: 120%;
        }
        table, th, td {
  			border: 1px solid black;
  			
		}
</style>
        
    </head>
    <body  background-image: url('images/dp6.jpg');>
 
         <sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/virtusa1"
                           user="root"  password="Jashu@12345"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT b.id, b.accountnumber, b.bankname, d.name, d.phone, d.email, d.address1  
			FROM bank AS b  
			LEFT JOIN debtor AS d  
			ON b.id=d.id
        </sql:query>
    
    <%-- <c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}<td>${u.getEmail()}</td><td>${u.getGender()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach> --%>
    	<center><h2>Welcome to Admin Page</h2></center>
        <form >
            <table border="1" width="80%"  align="center">
                <caption style="background-color:#E55437">Customer Details</caption>
                <tr>
                    <th style="color:#18091a">Debtor ID</th>
                    <th style="color:#18091a">Debtor Name</th>
                    <th style="color: #18091a">Email</th>
                    <th style="color: #18091a">Phone</th>
                    <th style="color: #18091a">Bank Name</th>
                    <th style="color: #18091a">Address</th>
                    <th style="color: #18091a">AccountNumber</th>
                    
                </tr>
                <c:forEach var="u" items="${result.rows}">
                    <tr>
                        <td ><c:out value="${u.id}" /></td>
                        <td ><c:out value="${u.name}"/></td>
                         <td ><c:out value="${u.email}"/></td>
                         <td ><c:out value="${u.accountnumber}"/></td>
                         <td><c:out value="${u.bankname}"/></td>
                          <td><c:out value="${u.address1}"/></td>
                            <td><c:out value="${u.phone}"/></td>
<%--                              <c:if test="${debtor ne 'accepted' }"> //check status if accepted, don't render Accept button
                        <td><button id="btnAccept" name="action" type="submit" value="Accept${u.id}" onclick="">Approve</button></td>
                    </c:if>
                    <c:if test="${upComLeave.leaveStatus ne 'rejected' }">//check status if accepted, don't render Reject button
                    <td><button id="btnReject" name="action" type="submit" value="Reject${upComLeave.emp_id}">Reject</button></td>
                    </c:if>
                    <c:if test="${upComLeave.leaveStatus eq 'cancel' }">//check status if cancel, render cancel button
                    <td><button id="btnCancel" name="action" type="submit" value="Cancel${upComLeave.emp_id}">Cancel</button></td>
                    </c:if>
 --%>                            
                            
                            
                            
                       <%--  <td><a href="update.jsp?Did=<c:out value="${u.Did}"/>">Update</a></td>
                        <td><a  href= "DebtorServlet?Did=<c:out value="${u.Did}"/>&action=delete">Delete</a></td>
                          --%>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <!-- <a  style="background-color:tomato"href="menu.jsp">Go Home</a> -->
    
</body>
</html>