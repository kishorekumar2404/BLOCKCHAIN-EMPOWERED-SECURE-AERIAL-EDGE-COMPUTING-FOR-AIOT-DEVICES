<%@page import="sun.font.Script"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  import="java.text.*" %>

<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

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
         
        String url="jdbc:mysql://localhost:3306/key";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,"root","root");
        Statement stmt=con.createStatement();
        String user=session.getAttribute("un").toString();
                
String saveFile="";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
{
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength)
    {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

saveFile="D:/Uploads/"+saveFile;
File f = new File(saveFile);




FileOutputStream fileOut = new FileOutputStream(f);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

 String format = "none";
   
        int id1=0;
    

        /*int index = saveFile.lastIndexOf(".");
        if(index > 0)
        {
          id1=id1+1;
           
               format = saveFile.substring(index+1);
               format = format.toLowerCase();
               
          
       }
        
        */
        
        
        
File folder = new File("D:/Uploads/");
File[] listOfFiles = folder.listFiles();
          
        // Create another file for comparison.  
        
        //System.out.println(file1);
  String qry1="delete from upload";
 stmt.executeUpdate(qry1);
 String qry4="delete from search";
 stmt.executeUpdate(qry4);
 
   int index;
   String fname="";
   //= saveFile.lastIndexOf(".");
            for (File file12 : listOfFiles) {
                
                if (file12.isFile()) {
                   fname=file12.getName(); 
        
                    index = fname.lastIndexOf(".");
                   long fileSize = file12.length();
double l=(double)fileSize/(1024*1024);
                     if(index > 0)
                       {
                            id1=id1+1;
                            format = fname.substring(index+1);
                            format = format.toLowerCase();
                       }
                    if (!format.equals(".des"))
                    {
                       String qry="insert into upload(file,filetype,size,ukey) values('"+fname+"','"+format+"',"+l+",'')";
                       stmt.executeUpdate(qry);
                       String qry2="insert into search(filename,count) values('"+fname+"',0)";
                       stmt.executeUpdate(qry2);
                       out.println("<script>alert('File Successfully Uploaded')</script>");
                       out.println("<script>window.location='admin.jsp'</script>");  
                    }
     // System.out.println(file.getName()+"\n");
       //             String qry1="insert into  file (filename) values('"+ file.getName().toString() +"')";
         //            stmt.executeUpdate(qry1);    
                   }
        
            }
            System.out.println("inserted");

  



  
session.setAttribute("filename",saveFile);
  
     
 session.setAttribute("id", id1);
    } 
 %>
    </body>
</html>
