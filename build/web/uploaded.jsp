<%-- 
    Document   : uploaded
    Created on : 12 May, 2015, 10:01:45 PM
    Author     : AmanDhiman
--%>

<!DOCTYPE html>
<%@page import="java.sql.*,java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>notice uploaded</title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
        </div>
        <%! 
            String title="";
            String details="";
        %>
        <%
        
        title = request.getParameter("title");
        details = request.getParameter("notice");
        
try
    {
    Connection conn = null;
    String url = "jdbc:derby://localhost:1527/";
    String dbName = "oams";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String userName = "oams"; 
    String password = "oams";
      
    Class.forName(driver).newInstance();
    conn = DriverManager.getConnection(url+dbName,userName,password);
    out.println("Connected to the database");
    System.out.print("error:"+details);
    PreparedStatement ps=conn.prepareStatement("insert into notice values(?,?)");  
    ps.setString(1,title);  
    ps.setString(2,details);
    
    ps.executeUpdate();  
    conn.close();
    
    }
    catch(SQLException e)
    {
        out.println("error: " + e.getMessage());
        e.getStackTrace();
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
                e.getMessage();
    }
    catch(NullPointerException e)
    {
        e.getMessage();
    }
    response.sendRedirect("faculty.jsp");
    %>         
        
    </body>
</html>
