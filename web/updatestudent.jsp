<%-- 
    Document   : updatestudent
    Created on : 7 May, 2015, 4:18:25 PM
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
    String rollno = request.getParameter("rollno");    
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String fathername = request.getParameter("fathername");
    String dob = request.getParameter("dob");      
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String batch = request.getParameter("batch");
    String semester = request.getParameter("semester");    
    String guardianemail = request.getParameter("guardianemail");
    String guardianmobile =request.getParameter("guardianmobile");
    String address = request.getParameter("address");
    String sex = request.getParameter("sex");

    out.println("MyDerby Connect Example.<br/>");
    Connection conn = null;
    String url = "jdbc:derby://localhost:1527/";
    String dbName = "OAMS";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String userName = "oams"; 
    String pass = "oams";
//  if(s=="Faculty")
    try {
        Class.forName(driver).newInstance();
        conn = DriverManager.getConnection(url+dbName,userName,pass);
        System.out.println("Connected to the database");
//        Statement s = conn.createStatement();
//        ResultSet rs;
//        
    PreparedStatement ps=conn.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?)");  
    ps.setString(1,rollno);  
    ps.setString(2,password);  
    ps.setString(3,name);  
    ps.setString(4,fathername);
    ps.setString(5,dob);
    ps.setString(6,mobile);
    ps.setString(7,email);
    ps.setString(8,batch);
    ps.setString(9,semester);
    ps.setString(10,guardianemail);
    ps.setString(11,guardianmobile);
    ps.setString(12,address);
    ps.setString(13,sex);
    
    ps.executeUpdate();  
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }  
              

     %>
    </body>
</html>
    