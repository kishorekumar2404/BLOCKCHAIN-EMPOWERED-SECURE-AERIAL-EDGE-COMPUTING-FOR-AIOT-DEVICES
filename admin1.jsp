

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  import="java.text.*" %>
<%@include file="dbcon.jsp" %>

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
        
     //   double speedAfterAdding = getCurrentSpeed();
             
        String qry ="select * from admin where username='"+ uname +"' and password='"+ pass +"'";
         
        ResultSet rs=stmt.executeQuery(qry);
        if(rs.next())
        {
            session.setAttribute("un", rs.getString("username"));
             response.sendRedirect("admin.jsp");   
        }
        
         
        %>
    </body>
</html>
