<%-- 
    Document   : updateattendance
    Created on : 2 May, 2015, 7:16:48 PM
    Author     : AmanDhiman
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Attendance</title>
    </head>
    <body>
    
        <div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%! 
        int k[]= new int[100];
        String s[]=new String[100];     
        int a,b,c;
        
        %>
    <%
        s = request.getParameterValues("roll[]");

        for(int i=0;i<s.length;i++){
    out.println("<br/> Roll No. is ==> "+s[i]);
    k[i]=Integer.parseInt(s[i]);
        
        }
    try{
    
    Connection connection = null;
    String url = "jdbc:derby://localhost:1527/";
    String dbName = "oams";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String userName = "oams"; 
    String password = "oams";
      
    Class.forName(driver).newInstance();
    connection = DriverManager.getConnection(url+dbName,userName,password);
    out.println("Connected to the database");
    Statement st = connection.createStatement();
    
    ResultSet rs=null;

    rs = st.executeQuery("select * from attendancetb");    
    while(rs.next())
    { 
    out.println(rs.getInt(1));
    out.println(rs.getInt(5));
    out.println(rs.getInt(6));
    //    b=0;
        a=rs.getInt(1);
        b=rs.getInt(5);
        c=rs.getInt(6);
    
        b=b+1;
    
        c=c+1;
    
    for(int i=0;i<k.length;i++)
    {
        st = connection.createStatement();
     if(a==k[i])
        st.execute("update oams.attendancetb set attended = " + b + ", total = " + c + " where rollno = " + a);
    }
//    st = connection.createStatement();
//    st.executeQuery("select * from attendance");    
   
    
    }
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
    response.sendRedirect("faculty.jsp");
    %>         
        
    </body>
</html>
