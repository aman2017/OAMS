<%-- 
    Document   : admin
    Created on : 7 May, 2015, 1:07:19 PM
    Author     : AmanDhiman
--%>

<!DOCTYPE html >
<html>
<head>
<title>
Admin Page...
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>

<nav>
			<a href="admin.jsp">home</a>
<!--			<a href="adminclass.jsp">class</a>-->
			<a href="adminfaculty.jsp">faculty</a>
			<a href="adminstudent.jsp">student</a>
                        <a href="adminlogout.jsp">Logout</a>
</nav>    

<h2>Admin Home Page...</h2>
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



<div class="clear">
</div>
<br/>
<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>

</body>
</html>
</html>
