<%-- 
    Document   : guardiancheck
    Created on : 7 May, 2015, 12:27:48 AM
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
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%

            int r;
            String u="";
           String p="";
//           String s=request.getParameter("select");
    String userid = request.getParameter("id");    
    String pwd = request.getParameter("password");
    out.println("MyDerby Connect Example.<br/>");
  Connection conn = null;
  String url = "jdbc:derby://localhost:1527/";
  String dbName = "OAMS";
  String driver = "org.apache.derby.jdbc.ClientDriver";
  String userName = "oams"; 
  String password = "oams";
//  if(s=="Faculty")
  try {
        Class.forName(driver).newInstance();
        conn = DriverManager.getConnection(url+dbName,userName,password);
        System.out.println("Connected to the database");
        Statement s = conn.createStatement();
        ResultSet rs;
        rs = s.executeQuery("select * from guardian where id='" + userid + "' and password='" + pwd + "'");
        while(rs.next())
        {
            out.println("<h1>");
            out.println(u=rs.getString(1));
            out.println(p=rs.getString(2));
            out.println("</h1>");
        }
        r=Integer.parseInt(userid);
        if(p.equals(pwd) && u.equals(userid))

        {
            session.setAttribute("userid", userid);
            out.println("welcome " + userid);
            out.println( userid);
            response.sendRedirect("guardian.jsp");
        }
        out.println("Invalid password <a href='index.jsp'>try again</a>");
        conn.close();
        out.println("Disconnected from database");
  }
        catch (Exception e) {
        e.printStackTrace();
        }      

     %>
    </body>
</html>0
