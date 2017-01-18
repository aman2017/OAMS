package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

public final class attendance_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <link rel=stylesheet href=\"stylesheet.css\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Attendance... </title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \t<div>\r\n");
      out.write("\t<h1  > <img src=\"thapar.jpg\" style=\"float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;\">Online Attendance Management System</h1>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("<nav>\r\n");
      out.write("\t\t\t<a href=\"faculty.jsp\">home</a>\r\n");
      out.write("\t\t\t<a href=\"attendance.jsp\">attendance</a>\r\n");
      out.write("\t\t\t<a href=\"uploadnotice.jsp\">upload notice</a>\r\n");
      out.write("\t\t\t<a href='logout.jsp'>Log out</a>\r\n");
      out.write("</nav>    \r\n");
      out.write("<h2>Make Attendance Here...</h2>\r\n");
      out.write("\r\n");

    
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

      out.write("    \r\n");
      out.write("<center>\r\n");
      out.write("\r\n");
      out.write("    <form action=\"updateattendance.jsp\" method=\"post\" >\r\n");
      out.write("        \r\n");
      out.write("<table >\r\n");
      out.write("  \r\n");
      out.write("    <tr>\r\n");
      out.write("        <th> Roll No</th>\r\n");
      out.write("        <th> Name </th>\r\n");
      out.write("        <th> Present/Absent </th>\r\n");
      out.write("        <th> Subject </th>\r\n");
      out.write("        <th> Total Attendance </th>\r\n");
      out.write("        <th> Last Attendance Date</th>\r\n");
      out.write("    </tr>\r\n");

    rs = st.executeQuery("select * from attendancetb");
    while(rs.next())
    { 
    Name=(String)rs.getString(2);
    Total=rs.getInt(6);
    java.sql.Date dbSqlDate = rs.getDate(7);
    String subject=rs.getString(8);

      out.write("    \r\n");
      out.write("    <tr>\r\n");
      out.write("        <td>\r\n");
      out.write("            ");
      out.print(count+1);
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("        <td>\r\n");
      out.write("            ");
      out.print(Name);
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("        <td>\r\n");
      out.write("            <input type=\"checkbox\" name=\"roll[]\" value=");
      out.print(count+1);
      out.write(" checked style=\"width: 15pt;\" >Present\r\n");
      out.write("        </td>\r\n");
      out.write("        <td>\r\n");
      out.write("            ");
      out.print(subject);
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("        <td>\r\n");
      out.write("            ");
      out.print(Total);
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("    \r\n");
      out.write("        <td>");
      out.print(dbSqlDate);
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    \r\n");
      out.write("<tr>\r\n");
      out.write("    ");

    count++;
    }
    
      out.write("\r\n");
      out.write("    <td></td>\r\n");
      out.write("    <td></td>\r\n");
      out.write("    <td></td>\r\n");
      out.write("    <td></td>\r\n");
      out.write("    <td></td>\r\n");
      out.write("    <td></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");

     
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
    
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <br/>\r\n");
      out.write("<center>\r\n");
      out.write("<input type=\"reset\" value=\"Reset\" style=\"border-top-style: groove; border-radius: 0pt; padding: 5px; margin-right: 60px;  border: 2pt solid #000; color: #000; background-color: #CCC;\" >\r\n");
      out.write("<input type=\"submit\" value=\"Submit\" style=\"border-top-style: groove; border-radius: 0pt;  padding: 5px; margin-left: 60px;border: 2pt solid #000; color: #000; background-color: #CCC;\">\r\n");
      out.write("</center>\r\n");
      out.write("</form>\r\n");
      out.write("</center>\r\n");
      out.write("<div class=\"clear\">\r\n");
      out.write("</div>\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("<center>\r\n");
      out.write("<footer >\r\n");
      out.write("&copy Amandeep Dhiman\r\n");
      out.write("</footer>\r\n");
      out.write("</center>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
