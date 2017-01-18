package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!Doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>\r\n");
      out.write("Home\r\n");
      out.write("</title>\r\n");
      out.write("<link rel=stylesheet href=\"stylesheet.css\" type=\"text/css\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<script\r\n");
      out.write("src=\"http://maps.googleapis.com/maps/api/js\">\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("var myCenter=new google.maps.LatLng(30.350243,76.360243);\r\n");
      out.write("\r\n");
      out.write("function initialize()\r\n");
      out.write("{\r\n");
      out.write("var mapProp = {\r\n");
      out.write("  center:myCenter,\r\n");
      out.write("  zoom:5,\r\n");
      out.write("  mapTypeId:google.maps.MapTypeId.ROADMAP\r\n");
      out.write("  };\r\n");
      out.write("\r\n");
      out.write("var map=new google.maps.Map(document.getElementById(\"googleMap\"),mapProp);\r\n");
      out.write("\r\n");
      out.write("var marker=new google.maps.Marker({\r\n");
      out.write("  position:myCenter,\r\n");
      out.write("  });\r\n");
      out.write("\r\n");
      out.write("marker.setMap(map);\r\n");
      out.write("\r\n");
      out.write("var infowindow = new google.maps.InfoWindow({\r\n");
      out.write("  content:\"Thapar University, Patiala\"\r\n");
      out.write("  });\r\n");
      out.write("\r\n");
      out.write("infowindow.open(map,marker);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("google.maps.event.addDomListener(window, 'load', initialize);\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t<h1  > <img src=\"thapar.jpg\" style=\"float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;\">Online Attendance Management System</h1>\r\n");
      out.write("</div>\r\n");
      out.write("<nav>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <a href=\"facultylogin.jsp\" style=\"margin-right: 10px; margin-left: 200px;\">faculty Login</a>\r\n");
      out.write("    <a href=\"studentlogin.jsp\" style=\"margin-right: 10px; margin-left: 50px;\">student Login</a>\r\n");
      out.write("    <a href=\"guardianlogin.jsp\" style=\"margin-right: 10px; margin-left: 50px;\"> Guardian Login </a>\r\n");
      out.write("    \r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<br/>\r\n");
      out.write("\r\n");
      out.write("    <marquee behavior=\"alternate\" scrolldelay=\"200\" style=\"padding: 15px; border: 3px solid #000; border-radius: 10px;\" >\r\n");
      out.write("        <p style=\"font-size: 34px; color: #fff;\">\r\n");
      out.write("            ONLINE ATTENDANCE MANAGEMENT SYSTEM\r\n");
      out.write("        </p>\r\n");
      out.write("        \r\n");
      out.write("    </marquee> \r\n");
      out.write("<br/><br>\r\n");
      out.write("<div id=\"googleMap\" style=\"width:100%;height:180px;border: 1px solid #333; border-radius: 18px;\" ></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"clear\">\r\n");
      out.write("</div>\r\n");
      out.write("<br/>\r\n");
      out.write("<!--<center>\r\n");
      out.write("<footer >\r\n");
      out.write("&copy Amandeep Dhiman\r\n");
      out.write("</footer>\r\n");
      out.write("</center>-->\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
