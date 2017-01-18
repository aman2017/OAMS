<%-- 
    Document   : error
    Created on : 9 May, 2015, 6:54:23 PM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <link rel=stylesheet href="stylesheet.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        
        <div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>

        <%
            request.getSession().invalidate();
        %>
        <nav>
            
        </nav>
        <h2 style="text-align:  center;">
            <pre>     There is some Wrong Input...</pre>
        </h2>
<br/>
        <h3 style="text-align:  center; text-decoration: none;">
            <a href="index.jsp" style="border: 1pt solid #333;">Please Try Again to Continue...</a>
        </h3>

    </body>
</html>
