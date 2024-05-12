

<%@page import="java.util.Random"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
</title>
    </head>
    <body onLoad="alert('hello')">
         <%!
public static String getMimeType(String fileUrl)
    throws java.io.IOException, MalformedURLException 
  {
    String type = null;
    URL u = new URL(fileUrl);
    URLConnection uc = null;
    uc = u.openConnection();
    type = uc.getContentType();
    return type;
  }

%>
        <%
        String url="jdbc:mysql://localhost:3306/key";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,"root","root");
        Statement stmt=con.createStatement();
		       

       
//System.out.println(random);;

        
        
String file=(String)session.getAttribute("fn");
                       
    File f = new File (file);
    String filename=f.getName();
    String qry="select * from upload where file='"+filename+"'";
    ResultSet rs1=stmt.executeQuery(qry);
    double fsize=0;
    if(rs1.next())
    {
           fsize=rs1.getDouble("size");
    }
    
    String[] fruits2 = {"VM1","VM2","VM3"};
              //   String[] fruits1 = {"1.7 Secs","1.2 Secs","2.3 Secs","2.4 Secs","2.5 Secs","2.1 Secs","2.2 Secs"};
        
        int idx2 = new Random().nextInt(fruits2.length);
String random2 = (fruits2[idx2]);


    String vname=request.getParameter("vmm");
    session.setAttribute("vm", vname);
    
    
    if(random2.equals(vname))
    {
        
              out.println("<script>  alert('VM is busy')</script>");     
               out.println("<script>window.location='search.jsp'</script>");  
    }
    else
    {
    
    String qry1="select * from vmm where vmlist='"+vname+"'";
    ResultSet rs11=stmt.executeQuery(qry1);
    double vsize=0;
    int vmsize=0;
    int cost=0;
    if(rs11.next())
    {
           vmsize=rs11.getInt("size");
           vsize=rs11.getDouble("bal");
           cost=rs11.getInt("cost");
    }
    if(vmsize>=vsize && vsize>=0)
    {
    vsize=vsize-fsize;
   // out.println("Downloading Speed"+random);
    String s="update vmm set bal="+vsize+" where  vmlist='"+vname+"'";
    stmt.executeUpdate(s);
   // out.println("Vsize"+vsize);
  //  out.println("Fsize"+fsize);
   // out.println("VMM"+vname);
  //  out.println("Fname"+filename);
   
    
   
    String type=getMimeType("file:"+file);

    response.setContentType (type);
    response.setHeader ("Content-Disposition", "attachment;     filename=\""+filename+"\"");
 
    String name = f.getName().substring(f.getName().lastIndexOf("/") + 1,f.getName().length());
    InputStream in = new FileInputStream(f);
        ServletOutputStream outs = response.getOutputStream();
  
        int bit = 256;
        int i = 0;
            try {
              
                    while ((bit) >= 0) 
                    {
                        bit = in.read();
                        outs.write(bit);
                    }
                        } catch (IOException ioe)
                                {
                        ioe.printStackTrace(System.out);
                    }
                        outs.flush();
                    outs.close();
                    in.close(); 
        
                
        
        

                    
           }
       else{
        session.setAttribute("vsize", vsize);
        session.setAttribute("vname", vname);
        out.println("<script>  alert('Limit is over')</script>");   
        out.println("<script>window.location='search.jsp'</script>");  
       }
            }
    //response.sendRedirect("search.jsp");
        %>
    </body>
</html>
