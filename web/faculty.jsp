<!DOCTYPE html >
<html>
<head>
<title>
Faculty Page...
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<div>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
</div>

<nav>
			<a href="faculty.jsp">home</a>
			<a href="attendance.jsp">attendance</a>
			<a href="uploadnotice.jsp">upload notice</a>
                        <a href="logout.jsp">Log out</a>
</nav>    

    <h2> Faculty Home Page...</h2>
<center >
<div style="border:1px solid #D40400; height:30%;width:30%;">
<%
    out.println("You Are Welcome");
    out.print("<br/>");
    String userId= (String) session.getAttribute("userid");
    
    out.println(userId);
	
    %>
	</div>
</center>

<br/>
    <div class="clear">
</div>
<br/>
<br/>
<br/>
<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>-->

</body>
</html>
