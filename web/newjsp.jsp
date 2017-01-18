<%-- 
    Document   : newjsp
    Created on : 3 May, 2015, 12:54:16 PM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel=stylesheet href="stylesheet.css" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        	<h1 >Online Attendance Management System</h1>

<nav>
			<a href="faculty.jsp">home</a>
			<a href="attendance.jsp">attendance</a>
			<a href="emailnotice.jsp">email notice</a>
			<a href="uploadnotice.jsp">upload notice</a>
			
</nav>    
<h2>Make Attendance Here...</h2>

<center>

    <form action="updateattendance.jsp" method="post" >
        
<table style="border:1px solid #333;">
  
    <tr>
        <th> RollNo</th>
        <th colspan="2"> status</th>
    </tr>
   
    <tr>
        <td>
            101
        </td>
        <td>
            <input type="radio" name="roll1" value="Present" checked>Present
        </td>
        <td>
            <input type="radio" name="roll1" value="Absent" > Absent
            
        </td>  
        
    </tr>
    <tr>
        <td>
            102
        </td>
        <td>
            <input type="radio" name="roll2" value="Present" checked>Present
        </td>
        <td>
            <input type="radio" name="roll2" value="Absent" > Absent
            
        </td>
    </tr>
        
    <tr>
        <td>
            103
        </td>
        <td>
            <input type="radio" name="roll3" value="Present" checked>Present
        </td>
        <td>
            <input type="radio" name="roll3" value="Absent" > Absent
        </td>            
       
    </tr>
<br/>
<tr>

    <td><input type="reset" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td><input type="submit" ></td>
</tr>
</table>
</form>
</center>
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
