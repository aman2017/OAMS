<%-- 
    Document   : newjsp
    Created on : 3 May, 2015, 12:54:16 PM
    Author     : AmanDhiman
--%>

<%@page import="java.util.Date,java.text.SimpleDateFormat;"  %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel=stylesheet href="stylesheet.css" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance... </title>
    </head>
    <body>
        	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
			</div>
<nav>
			<a href="faculty.jsp">home</a>
			<a href="attendance.jsp">attendance</a>
			<a href="uploadnotice.jsp">upload notice</a>
			<a href='logout.jsp'>Log out</a>
</nav>    
<h2>Make Attendance Here...</h2>

<%
    
    String Name="";
    String list[]= new String[100];
    int Total=0;
    int count=0;
     try{
    
    Connection connection = null;
    String url = "jdbc:derby://localhost:1527/";
    String dbName = "oams";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String userName = "oams"; 
    String password = "oams";
      
    Class.forName(driver).newInstance();
    connection = DriverManager.getConnection(url+dbName,userName,password);
    //out.println("Connected to the database");
    Statement st = connection.createStatement();
    
    ResultSet rs=null;
%>    
<center>

    <form action="updateattendance.jsp" method="post" >
        
<table >
  
    <tr>
        <th> Roll No</th>
        <th> Name </th>
        <th> Present/Absent </th>
        <th> Subject </th>
        <th> Total Attendance </th>
        <th> Last Attendance Date</th>
    </tr>
<%
    rs = st.executeQuery("select * from attendancetb");
    while(rs.next())
    { 
    Name=(String)rs.getString(2);
    Total=rs.getInt(6);
    java.sql.Date dbSqlDate = rs.getDate(7);
    String subject=rs.getString(8);
%>    
    <tr>
        <td>
            <%=count+1%>
        </td>
        <td>
            <%=Name%>
        </td>
        <td>
            <input type="checkbox" name="roll[]" value=<%=count+1%> checked style="width: 15pt;" >Present
        </td>
        <td>
            <%=subject%>
        </td>
        <td>
            <%=Total%>
        </td>
    
        <td><%=dbSqlDate%>
        </td>
    </tr>
    
<tr>
    <%
    count++;
    }
    %>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
</table>
<%
     
    connection.close();
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
    %>

        <br/>
<center>
<input type="reset" value="Reset" style="border-top-style: groove; border-radius: 0pt; padding: 5px; margin-right: 60px;  border: 2pt solid #000; color: #000; background-color: #CCC;" >
<input type="submit" value="Submit" style="border-top-style: groove; border-radius: 0pt;  padding: 5px; margin-left: 60px;border: 2pt solid #000; color: #000; background-color: #CCC;">
</center>
</form>
</center>
<div class="clear">
</div>
<br/>
<br/>
<br/>
<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>

</body>
</html>
