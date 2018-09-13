<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    <%@include file="css/bootstrap.min.css" %>
   
     <%@include file="css/style.css" %>    
</style>
</head>
<body>
<h1>Welcome to Home Page</h1><hr>
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
	<br><br><br><br><br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
	<th>userID</th>
	<th>firstName</th>
	<th>lastName</th>
	<th>dateOfBirth</th>
	<th>gender</th>
	<th>Street</th>
	<th>Location</th>
	<th>City</th>
	<th>State</th>
	<th>Pincode</th>
	<th>Mobile No.</th>
	
	<th>emailID</th>
	<th><br></th>
	<th><br></th>
	<c:forEach var="pro" items="${profiles}">
<tr>
<td>${pro.userID}</td>
<td>${pro.firstName}</td>
<td>${pro.lastName}</td>
<td>${pro.dateOfBirth}</td>
<td>${pro.gender}</td>
<td>${pro.street}</td>
<td>${pro.location}</td>
<td>${pro.city}</td>
<td>${pro.state}</td>
<td>${pro.pincode}</td>
<td>${pro.mobileNo}</td>
<td>${pro.emailID}</td>



	<td><a href="editVehicle.html">Edit</a></td>
	<td><a href="DeleteVehicle.html">Delete</a></td>
	</tr>
	</c:forEach>
	
	</table>
	<br><Br><br>
	<center><form action="Administrator.jsp"><input type="submit" value="Go back to admin page"/></form></center>
	<br><Br><br>
</body>
</html>