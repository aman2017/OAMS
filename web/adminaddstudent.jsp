<%-- 
    Document   : adminaddstudent
    Created on : 14 May, 2015, 10:03:03 PM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" alt="logo" style="float:left; margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%
           String u="";
           String p="";
//           String s=request.getParameter("select");
    String facultyid = request.getParameter("facultyid");    
    String password = request.getParameter("password");
    String mobile = request.getParameter("mobile");
    String sex = request.getParameter("sex");
    String email = request.getParameter("email");
    String address = request.getParameter("address");

    out.println("MyDerby Connect Example.<br/>");
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
        
    PreparedStatement ps=conn.prepareStatement("insert into facultytb values(?,?,?,?,?,?)");  
    ps.setString(1,facultyid);  
    ps.setString(2,password);  
    ps.setString(3,mobile);  
    ps.setString(4,sex);
    ps.setString(5,email);
    ps.setString(6,address);
    ps.executeUpdate();  
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }                
%>
    </body>
</html>
  