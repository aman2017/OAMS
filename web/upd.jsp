<%-- 
    Document   : upd
    Created on : 3 May, 2015, 3:55:39 PM
    Author     : AmanDhiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            
    try
    {
        
 
String[] s = request.getParameterValues("roll[]");
String[] at = request.getParameterValues("atn[]");
for(int i=0; i<s.length;i++)
{
     out.println(i+"<hr>");
        
 out.println(s[i]+ " > ");
    if(at[i].isEmpty())
    {
        out.println("at["+i+"]"+ " Empty ");
    }
    else
    {
    out.println("at["+i+"]"+ " flii ");
    }
 
}
  //  else
    {
        out.println("<br>at="+at.length+"<br>s="+s.length+ " > Null");
    
    }

}
        catch(Exception ex)
{
      out.println(ex.getLocalizedMessage());
}
%>
    </body>
</html>
