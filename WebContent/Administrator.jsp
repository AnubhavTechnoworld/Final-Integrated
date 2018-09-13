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
	<td rowspan="7" align="center">Page Based on the navigation link here</td>
	</tr>
	<tr>
	<td align="center"><a href="getdriver">View Driver </a></td>
	</tr>
	<tr>
	<td align="center"><a href="adddriver">Add Driver</a></td>
	</tr>
	<tr>
	<td align="center"><a href="getvehicle">View Vehicle </a></td>
	</tr>
	<tr>
	<td align="center"><a href="addvehicle">Add Vehicle </a></td>
	</tr>
	<tr>
	<td align="center"><a href="getroute">View Route</a></td>
	</tr>
	<tr>
	<td align="center"><a href="addroute"target="_self">Add Route </a></td>
	</tr>
	
	</table>
</body>
</html>