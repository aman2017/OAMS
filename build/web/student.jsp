<!DOCTYPE html >
<html>
<head>
<title>
Student Page...
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
			<a href="student.jsp">home</a>
			<a href="checkattendance.jsp">check attendance</a>
			<a href="checknotice.jsp">check notice</a>
                        <a href='logout.jsp'>Log out</a>

</nav>
    
<h2> Student Home Page...</h2>
<center >
<div style="border:1px solid #D40400; height:50px;width:20%;">
<%
    String userId= (String) session.getAttribute("Name");
    out.println("WELCOME <br/> Roll Number:" + userId);
%>

</div>
</center>

<div class="clear">
</div>
<br/>
<br/>
<br/>
<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>

</body>
</html>
</html>
