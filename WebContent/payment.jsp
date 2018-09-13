<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PAYMENTS PAGE</title>
<style type="text/css">
    <%@include file="css/bootstrap.min.css" %>
    
    <%@include file="css/style.css" %>
    
</style>  

</head>
<body>
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("userID")==null)
      response.sendRedirect("Login.jsp");
  %> 
<form method="post" action ="ViewBooking.jsp" enctype="multipart/form-data"> 
<table border="1">
    <tr>
        <th>Credit Card Number</th>
        <td>
            <input type="text" name = "creditcardnumber"/>
        </td>
    </tr>
    <tr>
        <th>valid from</th>
        <td>
            <input type="date"/>
        </td>
    </tr>
    <tr>
        <th>valid to</th>
        <td>
             <input type="date"/>
        </td>
    </tr>
    <tr>
        <th>Payment Amount</th>
        <td>
            <input type="text"/>
        </td>
    </tr>
    <tr>
        <th>Account password (verification)</th>
        <td>
            <input type="password"/>
        </td>
    </tr>

</table>
 <input type = "submit" value = "Pay"/>

</form>

</body>
</html>