<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>
</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#">  <h4>Load Balancing </h4>
</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <!-- <li class="first"> <a href="index.jsp" title="Home Page">Home</a></li>
                        <li><a href="adminlogin.jsp" title="Cloud Admin">CloudSeviceProvider</a></li>
			<li><a href="userlogin.jsp" title="Cloud User">Cloud User</a></li>
                        <li><a href="register.jsp" title="New User">New User</a></li>-->
                    </ul> 
                </div>

            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <    <li class="text-center user-image-back">
                        <img src="assets/img/find_user.png" class="img-responsive" />
                     
                    </li>


                     <li>
                        <a href="search.jsp"><i class="fa fa-desktop "></i>SEARCH FILE</a>
                    </li>
                   
                    <li>
                        <a href="vfiles.jsp"><i class="fa fa-table "></i>VIEW FILES</a>
                    </li>
                    <li>
                        <a href="index.jsp"><i class="fa fa-edit "></i>SIGN OUT</a>
                    </li>

                  
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2></h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        
                        <center>    <%
                                  
String mail1=(String)session.getAttribute("mail");
    String name=(String)session.getAttribute("un");

%>
  		        <form id="form1" method="post" action="">
  		          <p>&nbsp;</p>
  		          <table width="496" height="156" border="1" align="center">
                    <tr>
                      <td height="30" colspan="3"><div align="center" class="style3 style4">Download File </div></td>
                    </tr>
                    <tr>
                      
                        <td width="96" rowspan="2"><a href="register.jsp"><img src="images/search.ico" alt="" width="98" height="80" /></a></td>
                    </tr>
                    <tr>
                      <td height="44"><strong>File List </strong></td>
                      
                    </tr>
                              
                              <tr align="center"><td colspan="2">
                              
<%
                     
                       
         java.util.Date date12 = new java.util.Date();
		String strDateFormat = "yyyy:MM:dd  HH:mm:ss ";
		SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
		String date1 = sdf.format(date12.getTime());
    String s="insert into process values('"+ name +"','"+ date1 +"','User searches for file')";
              stmt.executeUpdate(s);
              

    //String qry="select downloadfile,count('downloadfile') as dwn from download group by downloadfile order by dwn desc";
              
              
              String con1=request.getParameter("username")+"%";
    String qry="select filename from search where filename LIKE '"+con1+"' order by count desc";
    
      ResultSet rs=stmt.executeQuery(qry);
       out.println("<table border=1 width=750 align=center>");
     //out.println("<tr><th>FileName</th><th>&nbsp</th></tr>");
    String path="";
    int i=0;
       while(rs.next())
            {
            out.println("<tr style='height:40px;'><td>"+ ++i +"</td>");
   out.println("<td>"+rs.getString(1)+"</td>");
   //out.println("<td>"+rs.getString(2)+"</td>");
   //out.println("");
   path="D:/Uploads/"+rs.getString(1);
   
   %>
   <td><a href="download.jsp?f=<%=path%>">Download File</a></td>
   </tr>
   <%
 // out.println("<td>"+"<a href=delete.jsp?id="+ rs.getString(1)+">"+" DeleteFile"+"</a></td></tr>");
        
        } 
     out.println("</table>");    
                     
                   /*  String uname=(String)session.getAttribute("un");
                     
		File f = new File("D:/UploadFiles");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
 */
                     
                     
            
%></td></tr>                    
              </table>
                <p>&nbsp;</p>
 	        </form></center>
                    </div>
                    

                </div>
                <!-- /. ROW  -->
            </div>
        </div>
    </div>
               
    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>
