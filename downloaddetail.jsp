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
    <%@include file="dbcon.jsp" %>
    
    <%
        
 String name=(String)session.getAttribute("uname");
 String uname=request.getParameter("name");
  String vmm=request.getParameter("vmmm");

  
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
 <a href="#">  <h4>Load Balancing
                        </h4>
</a>                </div>
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
                        <a href="admin.jsp"><i class="fa fa-desktop "></i>FILE UPLOAD</a>
                    </li>
                   
                    <li>
                        <a href="viewfiles.jsp"><i class="fa fa-table "></i>VIEW FILES</a>
                    </li>
                    <li>
                        <a href="downloaddetail.jsp"><i class="fa fa-edit "></i>DOWNLOAD FILES</a>
                    </li>

                    <li>
                        <a href="index.jsp"><i class="fa fa-qrcode "></i>SIGN OUT</a>
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
                        
                    
                                
                                 <center><p style="font-size: 20px;"><b>DOWNLOAD DETAILS</b></p></center>
                                <div style="width: 100%;float:left;">
                            
                            
                            <div style="width: 50%;float:left; ">
                                
              
			 <%
       
        
        
        
        
        String qry="select * from download";
        ResultSet rs=stmt.executeQuery(qry);
        int i=0;
        
        //out.println("<center><h4></h4></center>");
        
        out.println("<table border=1 align=center width='80%'>");
        out.println("<tr style='height:40px;'><th>Serial Number</th><th>UserName</th><th>File</th></tr>");
        
        while(rs.next())
          {
              i=i+1;
             out.println("<tr style='height:40px;'><td>"+ ++i +"</td>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td></tr>");
           
          }
      out.println("</table>");           
        
        %>	
				
                            </div>
                                
                                
                                
                                <div style="width: 50%;float:right;">
                                    <img src="images/a2.jpeg" width="400" height="400">
                            </div>
                                </div>		
                
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
