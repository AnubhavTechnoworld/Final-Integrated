<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Details</title>
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
<h1>View Vehicle details</h1>
    <hr>
	<div align="left" style="float: left;">
	Logo
	<hr>
	</div>
	<div align="center">
	Project Title
	</div>
	<hr>
	
	<div align="left" style="float: left;">
	Logged in Name
	
	</div>
	
	<br>
	<hr>
    <div align="left" style="float: left;">
	VIEW VEHICLE/ROUTE DETAILS
	
	</div>
	<br>
	
	<table border="1" style="width:100%;height:360px" >
	
	<tr>
	<th>Vehicle Name</th>
    <th>Vehicle Type</th>
    <th>Registration Number</th>
    <th>Seating Capacity</th>
    <th>Fare Per KM</th>
	</tr>
	<c:forEach var="veh" items="${vehicle }">
	<tr>
	<td><c:out value="${veh.name}"></c:out></td>
	<td><c:out value="${veh.type}"></c:out></td>
	<td><c:out value="${veh.registrationNumber}"></c:out></td>
	<td><c:out value="${veh.seatingCapacity}"></c:out></td>
	<td><c:out value="${veh.farePerKM}"></c:out></td>
	</tr>
	</c:forEach>
	</table>
	<form action="user.jsp"><input type="submit" value="Go to previous page"/></form>
</body>
</html>