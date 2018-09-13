<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h1>Add Driver</h1><hr>
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
	<b><p style="font-size:16px" align="center">Please enter details below:</p></b><br><br>
	<form action="savedriver" method="post">
	<table border="1" style="width:60%;height:360px" align="center">
	<tr>
	<td><b>Driver Name</b></td>
	<td><input type="text" name="name"></td>
	</tr>
	<tr>
	<td><b>Street</b></td>
	<td><input type="text" name="street"></td>
	</tr>
	<tr>
	<td><b>Location</b></td>
	<td><input type="text" name="location"></td>
	</tr>
	<tr>
	<td><b>City</b></td>
	<td><input type="text" name="city"></td>
	</tr>
	<tr>
	<td><b>State</b></td>
	<td><input type="text" name="state"></td>
	</tr>
	<tr>
	<td><b>Pincode</b></td>
	<td><input type="text" name="pincode"></td>
	</tr>
	<tr>
	<td><b>Mobile No.</b></td>
	<td><input type="text" name="mobileNo"></td>
	</tr>
	<tr>
	<td><b>License No.</b></td>
	<td><input type="text" name="licenseNumber"></td>
	</tr>
	</table>
	<br><br>
	<center><input type="submit" value="adddriver" name="action"/></center>
	<br><br>
	</form>
</body>
</html>