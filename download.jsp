
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
        <script type="text/javascript">

   var retVal = prompt("Enter your LoginKey : ",key);
   //alert("You have entered : " +  key );

</script>  
    </head>
    <body>
                               <% 
String name123=(String)session.getAttribute("uname");

out.println("<b>Welcome "+" "+ name123+"</b>");%>
        
        <form id="form1" name="form1" method="post" action="">
            <%
           
            
         String file=request.getParameter("f");
         session.setAttribute("fn",file);
           
            String uname=(String)session.getAttribute("un");
            String mail=(String)session.getAttribute("mail");
            String s2=(String)session.getAttribute("s1");
          
         
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
	

                        Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class",
                                "javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");
                        Session mailSession = Session.getInstance(props,
                               new javax.mail.Authenticator() {
                                    protected PasswordAuthentication 
                                          getPasswordAuthentication() {
                                        return new PasswordAuthentication
                                          ("projectcode2015","gmailpassword123456");
                                    }
                                });
                        try {

                            Message message = new MimeMessage(mailSession );
                            message.setFrom(new InternetAddress("from@no-spam.com"));
                            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mail));
                            message.setSubject("Hai"+""+uname);
                            message.setText("\n\n  Your download key code is"+" "+s);
                            Transport.send(message);
                            System.out.println("Done");
                        } catch (MessagingException e)
                        {
                        
                            out.println(e);
                        }
                                String dfile="";
                                 StringTokenizer st = new StringTokenizer(file,"/",true);
					
					while (st.hasMoreTokens()) {
						dfile = st.nextToken();
					}
                
        
       String qry="update search set count=(count+1) where filename='"+dfile+"'";
    
      stmt.executeUpdate(qry);
      String vms=(String)session.getAttribute("vm");
       InetAddress ipAddr = InetAddress.getLocalHost();
            System.out.println(ipAddr.getHostAddress());
String qry3="insert into download(username,downloadfile,code,dip)values('"+uname+"','"+dfile+"','"+s+"','"+ipAddr.getHostAddress()+"')";
stmt.executeUpdate(qry3);
                             
 
     response.sendRedirect("downloadfile.jsp?uname="+uname+""); 
        
   %>             
            
   
     </form>
    </body>
</html>
