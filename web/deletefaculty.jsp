<%-- 
    Document   : deletefaculty
    Created on : 10 May, 2015, 3:58:15 PM
    Author     : AmanDhiman
--%>

<!Doctype html>
<html>
<head>
<title>Delete Faculty
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
<nav>
			<a href="admin.jsp">home</a>
			<a href="classdetails.jsp">class</a>
			<a href="modifyfaculty.jsp">Modify</a>
			<a href="modifystudent.jsp">Modify</a>
                        <a href="adminlogout.jsp">Logout</a>
</nav>   
<h2>Delete Faculty</h2>

<br/>
        <div style="margin-left:300px;">
    <fieldset style="box-shadow: 10px 10px 10px #bbb;  border-radius: 10px; width: 30%; height: 120pt;" >
        <legend style="background-color:  #F40000;">Delete Faculty</legend>
<form method="post" action="admindeletefaculty.jsp">
    <p> <b>Faculty ID : </b></p> <input type="text" name="facultyid" placeholder="Enter Faculty ID Please">
<center>
<br/>
<br/>
<input type="submit" name="submit" style= "float: right; background-color:#f40000 ; width: 100px;border:1px solid white; border-bottom:3px solid white;  color:white;"> 
</center>
</form>
</fieldset >
</div>

<div class="clear">
</div>
<br/>
<br/><br/>

<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>-->

</body>
</html>