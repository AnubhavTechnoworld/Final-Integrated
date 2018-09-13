<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer HomePage</title>
<style type="text/css">
    <%@include file="css/bootstrap.min.css" %>    >
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
	
	<br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
	<th><br></th>
	<td rowspan="6" align="center">Page based on the navigation link selected</td>
	</tr>
	<tr>
	<td align="center"><form action="BookVehicle.jsp"><input type="submit" value="Book vehicle"/></form></td>
	</tr>
	<tr>
	<td align="center"><form action="ViewBooking.jsp"><input type="submit" value="View Booking Details"/></form></td>
	</tr>
	<tr>
	<td align="center"><form action="CancelBooking.jsp"><input type="submit" value="Cancel Booking"/></form></td>
	</tr>
	<tr>
	<td align="center"><form action="viewvehicle"><input type="submit" value="View Vehicle Details"/></form></td>
	</tr>
	<tr>
	<td align="center"><form action="viewroute"><input type="submit" value="View Route Details"/></form></td>
	</tr>
	</table>
</body>
</html>