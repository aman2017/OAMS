<%-- 
    Document   : guardianCheckAttendance
    Created on : 7 May, 2015, 12:50:00 PM
    Author     : AmanDhiman
--%>
<%@page import="java.sql.*"%>
<!Doctype html>
<html>
<head>
<title>
Check Attendance
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
<nav>
			<a href="guardian.jsp">home</a>
			<a href="guardianCheckAttendance.jsp">check attendance</a>
			<a href='logout.jsp'>Log out</a>
</nav>    
    <center>
    <br> 
    <div style="border:1px solid #D40400; height:50px;width:20%;">
<%
    
        String userId= (String) session.getAttribute("userid");
        
        r=Integer.parseInt(userId);
        r=r%1000;
        out.println("<br/>Your Son/Daughter'Roll Number is:" + r);
%>
    </div>
</center>

<h2> Guardian Check Attendance...</h2>

<%!
    int a,b,t,percentage;
    int r;
    String name;
    int rollno,attended,total;
%>

<%
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
        //out.println("Connected to the database");
        Statement st = conn.createStatement();


        ResultSet rs=null;
        rs = st.executeQuery("select * from attendancetb where rollno="+r);
        while(rs.next())
        {
            rollno=rs.getInt(1);
            name=rs.getString(2);
            attended=rs.getInt(5);
            total= rs.getInt(6);
        }
            a=attended;
            t=total;
            percentage=((a/t)*100);
        }
        catch (Exception e) {
        e.printStackTrace();
        }
        
        conn.close();      

     %>
<center>
<table>
<tr>
<th>
Roll No.
</th>
<th>
    Name
</th>
<th> 
Attended Lectures
</th>
<th>
    Total Lectures
</th>
<th>
Percentage
</th>
</tr>
<tr>
        <td>
          <%=rollno%>
        </td>
        <td>
            <%=name%>
        </td>
        <td>
            <%=attended%>
        </td>
        <td>
            <%=total%>
        </td>
        <td>
            <%=percentage%> 
        </td>
</tr>
</table>
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