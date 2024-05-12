<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="java.util.*" import="java.text.*"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%@page import="java.io.*,java.net.*"%>
    <%@ page import="java.util.Properties" %>               
                <%@ page import="javax.mail.Message" %>
                <%@ page import="javax.mail.MessagingException" %>
                <%@ page import="javax.mail.PasswordAuthentication" %>
                <%@ page import="javax.mail.Session" %>
                <%@ page import="javax.mail.Transport" %>
                <%@ page import="javax.mail.internet.InternetAddress" %>
                <%@ page import="javax.mail.internet.MimeMessage" %>
                <%@include file="dbcon.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
</title>
         
    </head>
    <body>
        
        <%
   final char[] symbols = new char[36];


  for (int idx = 0; idx < 10; ++idx)
    symbols[idx] = (char) ('0' + idx);
  for (int idx = 10; idx < 36; ++idx)
    symbols[idx] = (char) ('a' + idx - 10);

 final Random random = new Random();

 final char[] buf;
  buf = new char[6];
  for (int idx = 0; idx < buf.length; ++idx) 
    buf[idx] = symbols[random.nextInt(symbols.length)];

	String s=String.valueOf(buf);
        String name=request.getParameter("name");
        String uname=request.getParameter("username");
        String pass=request.getParameter("password");
        String dd=request.getParameter("dd");
        String mm=request.getParameter("mm");
        String yy =request.getParameter("yy");
        String dob= dd+ "-" + mm + "-" + yy;
        String gender=request.getParameter("gender");
         String mail=request.getParameter("mail");
          String mobile=request.getParameter("mobile");
      Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");
                        
                        Session mailSession = Session.getInstance(props,new javax.mail.Authenticator()
                                {
                            protected PasswordAuthentication 
                                          getPasswordAuthentication()
                                          {
                                        return new PasswordAuthentication
                                          ("kishorekumar2404","gmailpassword");
                                    }
                                });

                        try 
                        {

          
                          Message message = new MimeMessage(mailSession );
                            message.setFrom(new InternetAddress("from@no-spam.com"));
                            message.setRecipients(Message.RecipientType.TO,
                                    InternetAddress.parse(mail));
                            message.setSubject("Hai"+" "+name);
                            message.setText("\n\n "+"Your login key is"+" "+s);

                            Transport.send(message);

                            System.out.println("Done");
                            
    
                        } 
                        catch (MessagingException e) 
                        {
                           // throw new RuntimeException(e);
                        }

   
     
   String qry="insert into register (name,username,password,dob,gender,mail,mobile,loginkey) values('"+name+"','"+uname+"','"+pass+"','"+dob+"','"+gender+"','"+mail+"','"+ mobile+"','"+s+"')";
             stmt.executeUpdate(qry);                                                                           
             
              out.println("<script>  alert('Successfully Registered your activation code is sent to your mail check that and then login to your account')</script>");     
               out.println("<script>window.location='userlogin.jsp'</script>");  
            // response.sendRedirect("register.jsp");
            
             //response.
  
        %>
                
    </body>
</html>
