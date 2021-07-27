<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.pack.dao.BankDao,java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head >
        <title>SELECT Operation</title>
        <style>



body {

 background-image:
    url('./images/dp4.jpg');
  background-repeat: no-repeat;
  background-size: 120%;
 font-family: "Poppins", sans-serif;
  height: 100vh;
  
 }




.container {
  max-width: 1000px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 10px;
  padding-right: 10px;
}

h2 {
  font-size: 26px;
  margin: 20px 0;
  text-align: center;
  small {
    font-size: 0.5em;
  }
}

.responsive-table {
  li {
    border-radius: 3px;
    padding: 25px 30px;
    display: flex;
    justify-content: space-between;
    margin-bottom: 25px;
  }
  .table-header {
    background-color: #95A5A6;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 0.03em;
  }
  .table-row {
    background-color: #ffffff;
    box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
  }
  .col-1 {
    flex-basis: 10%;
  }
  .col-2 {
    flex-basis: 40%;
  }
  .col-3 {
    flex-basis: 25%;
  }
  .col-4 {
    flex-basis: 25%;
  }
  
  @media all and (max-width: 767px) {
    .table-header {
      display: none;
    }
    .table-row{
      
    }
    li {
      display: block;
    }
    .col {
      
      flex-basis: 100%;
      
    }
    .col {
      display: flex;
      padding: 10px 0;
      &:before {
        color: #6C7A89;
        padding-right: 10px;
        content: attr(data-label);
        flex-basis: 50%;
        text-align: right;
      }
    }
  }
}
        </style>
        
    </head>
    <body bgcolor="#56baed">
 
    
        <form >
            <table border="1" width="40%" align="center">
                <caption style="background-color:tomato">Debtor BankAccount List</caption>
                <tr>
                    <th style="color:red">Did</th>
                    <th style="color:red">AccountNumber</th>
                    <th style="color:red">Bank Name</th>
                    <th style="color:red">Address</th>
                 
                    <th  style="color:red" colspan="2">Action</th>
                </tr>
                <c:forEach var="u" items="${list}">
                    <tr>
                        <td><c:out value="${u.id}"/></td>
                        <td><c:out value="${u.accountnumber}"/></td>
                         <td><c:out value="${u.bankname}"/></td>
                          <td><c:out value="${u.address}"/></td>
                            
                   
                       <td><a href="editBank?id=<c:out value="${u.id}"/>">Update</a></td>
                        <td><a href="deleteBank/${u.id}">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a  style="background-color:tomato"href="goHome">Go Home</a>
    
</body>
</html>