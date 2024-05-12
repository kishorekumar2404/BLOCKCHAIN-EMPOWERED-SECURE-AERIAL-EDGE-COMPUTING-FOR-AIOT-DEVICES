<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
     String url="jdbc:mysql://localhost:3306/key";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,"root","root");
Statement stmt=con.createStatement();
    
    
    %>