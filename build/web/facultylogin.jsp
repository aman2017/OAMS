<%-- 
    Document   : facultylogin
    Created on : 10 May, 2015, 12:40:05 PM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel=stylesheet href="stylesheet.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty login</title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
			</div>
        <nav>
            
        </nav>
        <br/>
        <div style="margin-left:360px;">
    <fieldset style="box-shadow: 10px 10px 10px #bbb;  border-radius: 10px;" >
        <legend style="background-color:  #D40400;">Faculty Login</legend>
<form method="post" action="facultycheck.jsp">
        
    <p> <b>Your id Please: </b></p> <input type="text" name="id" placeholder="Enter Your ID Please">
    <p> <b>Your password Please </b></p> <input type="password" name="password" placeholder="Enter Password Please">
    
<center>
<br/>
<br/>
<input type="submit" name="submit" value="Submit" style= "float: right; background-color:#f40000 ;width: 100px; border:1px solid white; border-bottom:3px solid white;  color:white;"> 
</center>
</form>
</fieldset >
</div>
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
