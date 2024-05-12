<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
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
    <script language="javascript/text">
        function alert()
        {
            <%
                 String[] fruits = {"1.3 Mbps","0.8 Mbps","2.3 Mbps","1.1 Kbps","0.2 Mbps","2.1 Mbps","1.0 Mbps"};
                 String[] fruits1 = {"1.7 Secs","1.2 Secs","2.3 Secs","2.4 Secs","2.5 Secs","2.1 Secs","2.2 Secs"};
        
        int idx = new Random().nextInt(fruits.length);
String random = (fruits[idx]);
int idx1 = new Random().nextInt(fruits1.length);
String random1 = (fruits1[idx]);
                 %>
                         
                          var value = "<%=random%>";
                          var value1 = "<%=random1%>";
                          <%
                          
                          String c=random+random1;
                          %>
                       // var  c= value.concat(value1);
                          alert ('Success'+value);
        }
            
</script>
    
    <% 
                       
                       /*String filename123=(String)session.getAttribute("file");
String name123=(String)session.getAttribute("name");
session.setAttribute("name",name123);*/
                       String name123=request.getParameter("uname");
                      // String file=request.getParameter("file");
                      String file =(String)session.getAttribute("fn");
                       
        out.println("<b>Welcome "+" "+ name123+"</b>");
        String url="jdbc:mysql://localhost:3306/key";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,"root","root");
        Statement stmt=con.createStatement();
        java.util.Date date12 = new java.util.Date();
		String strDateFormat = "yyyy:MM:dd  HH:mm:ss ";
		SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
		String date1 = sdf.format(date12.getTime());
    String s="insert into process values('"+ name123 +"','"+ date1 +"','Downloads File')";
              stmt.executeUpdate(s);

//              String file=(String)session.getAttribute("fn");
                       
    File f = new File (file);
    String filename=f.getName();
    String qry="select * from upload where file='"+filename+"'";
    ResultSet rs221=stmt.executeQuery(qry);
    double fsize=0;
    if(rs221.next())
    {
           fsize=rs221.getDouble("size");
    }








out.println("<br><b>File Size </b>"+" "+ fsize+" <b>MB</b>");
//out.println("<br><b>File Download Status </b>"+" "+ " Process ");



%>

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
                  <li class="text-center user-image-back">
                        <img src="assets/img/find_user.png" class="img-responsive" />
                     
                    </li>


                     <li>
                        <a href="search.jsp"><i class="fa fa-desktop "></i>SEARCH FILE</a>
                    </li>
                   
                    <li>
                        <a href="vfiles.jsp"><i class="fa fa-table "></i>VIEW FILES</a>
                    </li>
                    <li>
                        <a href="user_downloadlist.jsp"><i class="fa fa-table "></i>DOWNLOADED FILES</a>
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
                    
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        
                        <center>   <form id="form1" method="post" action="downloads.jsp">
  		          <p>&nbsp;</p>
                          
                          
                          
                          
<%



                          String q="select * from vmm";
                          ResultSet rs1=stmt.executeQuery(q);
                          out.print("<table border=1  bordercolor=red width='40%'>");
                          out.println("<tr align='center' ><th><p align=center>VM</p></th><th><p align=center>SIZE</th></p><th><p align=center>COST</th></p></tr>");
                          while(rs1.next())
                          {
                                  out.print("<tr align='center'><td>"+ rs1.getString("vmlist") +"</td><td>"+ rs1.getInt("size") +"</td><td>"+ rs1.getInt("cost") +"</td></tr>");
                          }
                          
                          out.println("</table>");

%>
                         <p>&nbsp;</p>
 	            <p><table width="444" border="1">
                            File Size<%= fsize%>
                            <br/><br/>
  <tr>
    
      <td width="200" height="50"><center><strong>Select VMM</strong> </center></td>
    <td width="200" >
          <center>
        <select name="vmm" style="width:200px;">
      <option>--Select--</option>
      <option value="VM1">VM1</option>
      <option value="VM2">VM2</option>
      <option value="VM3">VM3</option>
    </select></center>
        </td>
      
    <td width="200"><center><input type="submit" name="Submit" value="Success <%=  ""%>" style="width: 80px; height: 40px;color: #FFFFFF;  background-color: #8A2BE2; border-color: #8A2BE2;" onclick="alert(''+value)"/>
        </center></td>
  </tr>
</table>
</p>
  		        </form>
                        
                        </center>
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
