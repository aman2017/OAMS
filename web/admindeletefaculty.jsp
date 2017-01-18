<%-- 
    Document   : admindeletefaculty
    Created on : 12 May, 2015, 5:42:22 PM
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
    String facultyid = request.getParameter("facultyid");    

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
           
    PreparedStatement ps=conn.prepareStatement("delete from facultytb where facultyid='"+facultyid +"'");  
   
    
    ps.executeUpdate();  
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }                
%>
    </body>
</html>
    