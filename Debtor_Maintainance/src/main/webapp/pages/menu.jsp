<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<div style="color: blue">Welcome ${msg}</div>
<a style="color:black" href="addUserForm">DEBTOR_DETAILS</a><br>
  <a style="color:black" href="addBankForm">DEBTOR_BANKDETAILS</a><br>
  <a style="color:black" href="#">DEBTOR_AUTHORIZATION</a><br>
</div>
</body>
</html> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body {
  font-family: 'Lucida Grande', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  padding: 20px 50px 150px;
  font-size: 13px;
  text-align: center;
  background: #56baed;
}

ul {
  text-align: left;
  display: inline;
  margin: 0;
  padding: 15px 4px 17px 0;
  list-style: none;
  -webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}
ul li {
  font: bold 12px/18px sans-serif;
  display: inline-block;
  margin-right: -4px;
  position: relative;
  padding: 15px 20px;
  background: #fff;
  cursor: pointer;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -ms-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
}
ul li:hover {
  background: #555;
  color: #fff;
}
ul li a:hover {
  background: #555;
  color: #fff;
}
ul li ul {
  padding: 0;
  position: absolute;
  top: 48px;
  left: 0;
  width: 150px;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  display: none;
  opacity: 0;
  visibility: hidden;
  -webkit-transiton: opacity 0.2s;
  -moz-transition: opacity 0.2s;
  -ms-transition: opacity 0.2s;
  -o-transition: opacity 0.2s;
  -transition: opacity 0.2s;
}
ul li ul li { 
  background: #555; 
  display: block; 
  color: #fff;
  text-shadow: 0 -1px 0 #000;
}
ul li ul li:hover { background: #666; }
ul li:hover ul {
  display: block;
  opacity: 1;
  visibility: visible;
}


body {

 background-image:
    url('./images/dp2.jpg');
  background-repeat: no-repeat;
  background-size: 100%;





  font-family: "Poppins", sans-serif;
  height: 100vh;
  
  
  
  
}

</style>

</head>
<body >
<!-- <div style='position:absolute;zindex:0;left:0;top:0;width:100%;height:100%'>
           <img src='pages/im3.jpg' style='width:100%;height:100%' alt='[]' />
       </div> -->
<CENTER><H1 style="color: black">Welcome ${msg}</H1></CENTER>
<ul><li><a href="addUserForm">DEBTOR_DETAILS</a></li>
  <li><a href="addBankForm">DEBTOR_BANKDETAILS</a></li>
 <!--  <li>
    DEBTOR_AUTHORIZATION
    <ul>
      <li>KYC</li>
      <li>Passport</li>
      <li>CreditPoints</li>
    </ul>
  </li> -->
  <li>BLOG</li>
  <li>CONTACT</li>
</ul>
</body>
</html>