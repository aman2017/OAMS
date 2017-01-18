<%-- 
    Document   : admindeletestudent
    Created on : 13 May, 2015, 10:53:08 AM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> delete faculty</title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" alt="logo" style="float:left; margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%
    String rollno = request.getParameter("rollno");    

    Connection conn = null;
    String url = "jdbc:derby://localhost:1527/";
    String dbName = "OAMS";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String userName = "oams"; 
    String pass = "oams";

    try {
        Class.forName(driver).newInstance();
        conn = DriverManager.getConnection(url+dbName,userName,pass);
        System.out.println("Connected to the database");
           
    PreparedStatement ps=conn.prepareStatement("delete from studenttb where rollno='"+rollno +"'");  
    
    ps.executeUpdate();  
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }                
%>
    </body>
</html>
    