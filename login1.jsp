

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  import="java.text.*" %>

<%@include file="dbcon.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
</title>
    </head>
    <body>
         <%
       
        String uname=request.getParameter("username");
        String pass=request.getParameter("password");
        String key=request.getParameter("loginkey");
        
                
        String qry="select * from register where username='"+ uname +"' and password='"+pass+"'";
        ResultSet rs=stmt.executeQuery(qry);
        
        if (rs.next())
            {
             
               session.setAttribute("un", rs.getString("username"));
                session.setAttribute("un1", rs.getString("password"));
                session.setAttribute("mail",rs.getString("mail"));
         
               response.sendRedirect("search.jsp");        
                             
           }
               else 
            {
          
             
              out.println("<script>alert('username, password or login key is incorrect')</script>");
              
                    
                                   
                }
           session.setAttribute("p1",rs.getString("loginkey"));
  
   %>
    </body>
</html>
