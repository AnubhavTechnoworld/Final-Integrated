<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Booking Page</title>
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
<h1>Vehicle Booking Page</h1><hr>
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
	<td rowspan="3" align="center">
	<form action="confirm.jsp">
	Select journey Date
	<input type="date" value="date"/>
	<br><BR>
	Select Vehicle Type:
	<input type="radio" name="AC" value="AC"/>AC
	<input type="radio" name="AC"/ value="NON-AC">NON-AC
	<br><BR>
	Pickup point:
	<select name="Route">
       <option value = "select">select</option>
       <option value = "A">A</option>
       <option value = "B">B</option>
       <option value = "C">C</option>
       <option value = "D">D</option>
       <option value = "E">E</option>
    </select>
	<BR><BR>
	Drop point:
	<select name="Route">
       <option value = "select">select</option>
       <option value = "A">A</option>
       <option value = "B">B</option>
       <option value = "C">C</option>
       <option value = "D">D</option>
       <option value = "E">E</option>
    </select>
	<BR><BR>
	
	<input type="submit" value="Next"/>
	<input type ="reset" value="clear All"/>
	</form>
	</td>
	</tr>
	<tr>
	<td align="center">Book a Vehicle</td>
	</tr>
	
	<tr>
	<td align="center"><form action="user.jsp"><input type="submit" value="Go to previous Page"/></form></td>
	</tr>
	</table>
</body>
</html>