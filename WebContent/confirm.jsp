<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Page</title>
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
<h1>Booking Details page</h1><hr>
	<div align="left" style="float: left;">
	Logo
	</div>
	<div align="center">
	Project Title
	
	</div>
	<hr>
	<div align="left" style="float: left;">
	Logged Name
	</div>
	<div>
	<input type="button" value="Logout" style="float: right;"/>
	<input type="button" value="Home" style="float: right;"/>
	
	</div>
	<br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
 	<th><br></th>
	<td rowspan="6" align="center">
	<form action="payment.jsp">
	journey Date
	<input type="text"/>
	<br><BR>
	Vehicle Type:
	<input type="text"/>
	<br><BR>
	Pickup point:
	<input type="text"/>
	<BR><BR>
	Drop point:
	<input type="text"/>
	<BR><BR>
	<input type="submit" value="Make Payement"/>
	</form>
	</td>
	</tr>
	<tr>
	<td align="center">Book a Vehicle</td>
	</tr>
	<tr>
	<td align="center"></td>
	</tr>
	<tr>
	<td align="center"></td>
	</tr>
	<tr>
	<td align="center"></td>
	</tr>
	<tr>
	<td align="center"><form action="user.jsp"><input type="submit" value="previous page"/></form></td>
	</tr>
	</table>
</body>
</html>