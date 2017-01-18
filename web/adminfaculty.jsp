<%-- 
    Document   : adminfaculty
    Created on : 10 May, 2015, 2:48:11 PM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>
Admin Page...
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <h1  > <img src="thapar.jpg" alt="logo" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>

<nav>
                        <a href="admin.jsp">home</a>
			<a href="adminclass.jsp">class</a>
			<a href="adminfaculty.jsp">faculty</a>
			<a href="adminstudent.jsp">student</a>
                        <a href="adminlogout.jsp">Logout</a>
	
</nav>    

<h2>Faculty update Page...</h2>

<br/>
<br/>

<center >
    <div>
    
        <a href="addfaculty.jsp" style="border: 2px double #000; size: 50px; margin: 10pt; border-radius: 0pt;">Add Faculty</a>
        <a href="deletefaculty.jsp" style="border: 2px double #000; size: 50px; margin: 10pt; border-radius: 0pt;">Delete faculty</a>
        <a href="viewfaculty.jsp" style="border: 2px double #000; size: 50px; margin: 10pt; border-radius: 0pt;">View Faculty</a>
        
    </div>
</center>

<br/><br/><br/>

<div class="clear">
</div>
<br/>
<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>-->

</body>
</html>