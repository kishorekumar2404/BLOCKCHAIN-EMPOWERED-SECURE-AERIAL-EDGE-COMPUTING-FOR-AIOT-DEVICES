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
                    <a href="#">  <h4>Load Balancing</h4>
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
                        <a href="index.jsp"><i class="fa fa-desktop "></i>HOME</a>
                    </li>
                   
                    <li>
                        <a href="adminlogin.jsp"><i class="fa fa-table "></i>CSP</a>
                    </li>
                    <li>
                        <a href="userlogin.jsp"><i class="fa fa-edit "></i>CLOUD USER</a>
                    </li>

                    <li>
                        <a href="register.jsp"><i class="fa fa-qrcode "></i>NEW USER</a>
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
                        
                        <center>    <form id="form1" action="admin1.jsp" method="post" >
  		          <p>&nbsp;</p>
  		          <table width="418" border="1" align="center">
                    <tr>
                      <td height="30" colspan="3"><div align="center" class="style3 style4">Admin Login </div></td>
                                          </tr>
                    <tr style="height: 50px;">
                      
                        <td width="177"><center><input name="username" type="text" id="username" placeholder="Name" style="height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;"/></center></td>
                        <td width="106" rowspan="2"><center><img src="images/admin.jpg" alt="" width="110" height="79" /></center> </td>
                    </tr>
                    <tr style="height: 50px;">
                     
                        <td><center><input name="password" type="pass" id="password" placeholder="Pass" style="height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;" /></center></td>
                    </tr>
                    <tr style="height: 70px;">
                      <td colspan="3"><div align="center">
                        <input type="submit" name="Submit" value="Login" style="width: 80px; height: 40px;color: #FFFFFF;  background-color: #8A2BE2; border-color: #8A2BE2;"/>
                        <input type="reset" name="Submit2" value="Reset" style="width: 80px; height: 40px;color: #FFFFFF;  background-color: #8A2BE2; border-color: #8A2BE2;" />
                      </div></td>
                    </tr>
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
