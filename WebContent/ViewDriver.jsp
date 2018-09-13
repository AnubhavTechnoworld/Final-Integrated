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
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("userID")==null)
      response.sendRedirect("/Login.jsp");
  %> 
<header id="header">
    <nav class="navbar navbar-default navbar-static-top" role="banner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <div class="navbar-brand">
            <a href="home.jsp"><h1>ATA</h1></a>
          </div>
        </div>
		<div style='float:right' class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation"><a href="home.jsp" class="active">Home</a></li>              
              <li role="presentation"><a href="logout">Log Out</a></li>
            </ul>
          </div>
        </div>
        </div>  
    </nav>   
  </header>
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
	
	<br><br><br><br><br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
	<th>Driver Id</th>
	<th>Name</th>
	<th>Street</th>
	<th>Location</th>
	<th>City</th>
	<th>State</th>
	<th>Pincode</th>
	<th>Mobile No.</th>
	<th>License No.</th>
	<th><br></th>
	<th><br></th>
	<c:forEach var="dri" items="${drivers}">
<tr>
<td>${dri.driverID}</td>
<td>${dri.name}</td>
<td>${dri.street}</td>
<td>${dri.location}</td>
<td>${dri.city}</td>
<td>${dri.state}</td>
<td>${dri.pincode}</td>
<td>${dri.mobileNo}</td>
<td>${dri.licenseNumber}</td>


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