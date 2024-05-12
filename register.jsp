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
                        
                        <center>    <form id="form1" method="post" action="register1.jsp">
  		          <p>&nbsp;</p>
  		          <table width="516"  border="0" align="center">
                    <tr>
                        <td height="59"><div align="center"><a href="userlogin.jsp"><img src="images/register.jpg" width="150" height="100" border="0" /></a></div></td>
                      <td><label>
                          <div align="center" class="style3"><strong>USER REGISTRATION</strong></div>
                        </label>                      </td>
                    </tr>
                    <tr>
                      <td width="217" class="style3"><strong>
                        <label>
                        <div align="left">Name</div>
                        </label>
                      </strong></td>
                      <td width="283"><label>
                        <input type="text" name="name" required  style="width:250px;height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;" />
                      </label></td>
                    </tr>
                    <tr>
                      <td class="style3"><strong>
                        <label>
                        <div align="left">User Name</div>
                        </label>
                      </strong></td>
                      <td><label>
                        <input type="text" name="username" required style="width:250px;height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td class="style3"><strong>
                        <label>
                        <div align="left">Password</div>
                        </label>
                      </strong></td>
                      <td><label>
                        <input type="password" name="password" required maxlength="6" title="Password Should be 6 Digits" pattern="[A-Za-z]{2}[0-9]{4}" required style="width:250px;height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td class="style3"><strong><label>D.O.B</label></strong></td>
                      <td><select required name="dd" id="dd" style="width:80px; height: 40px;border: 1px solid; border-color: #A9A9A9;">
					  <option value="--DD--">--DD--</option>
                          <%  
	  for (int i=1;i<=31;i++)
	  {  
	  %>
                          <option value="<%=i%>" ><%=i%></option>
                          <%}%>
                        </select>
                        <select name="mm" id="mm" style="width:80px; height: 40px;border: 1px solid; border-color: #A9A9A9;">
											  <option value="--MM--">--MM--</option>
                          <%
	  for(int i=1;i<=12;i++)
	  {
	  %>
                          <option value="<%=i%>"><%=i%></option>
                          <%}%>
                        </select>
                        <select name="yy" id="yy" style="width:80px; height: 40px;border: 1px solid; border-color: #A9A9A9;">
											  <option value="--YY--">--YY--</option>
                          <%
	  for( int i=1950;i<=2020;i++)
	  {
	  %>
                          <option value="<%=i%>"><%=i%></option>
                          <%}%>
                        </select>                      </td>
                    </tr>
                    <tr>
                      <td class="style3"><div align="left"><strong>Gender</strong></div></td>
                      <td><strong>                        
                          <input name="gender" type="radio" value="male" required />
                          Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input name="gender" type="radio" value="female" required/>
                          Female
                      </strong></td>
                    </tr>
                    <tr>
                      <td class="style3"><strong>
                        <label>
                        <div align="left">Mail Id</div>
                        </label>
                      </strong></td>
                      <td><label>
                        <input type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required name="mail"  style=" width:250px; height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td class="style3"><strong>
                        <label>
                        <div align="left">Mobile No.</div>
                        </label>
                      </strong></td>
                      <td><label>
                        <input type="number" required name="mobile"  style=" width:250px; height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="submit" name="Submit" value="Register"  style="width: 80px; height: 40px;color: #FFFFFF;  background-color: #8A2BE2; border-color: #8A2BE2;"/>
                        <input type="reset" name="Submit2" value="Cancel" style="width: 80px; height: 40px;color: #FFFFFF;  background-color: #8A2BE2; border-color: #8A2BE2;"/>
                        </label>
                        &nbsp;&nbsp;<strong>&nbsp;&nbsp;
                        <label><a href="userlogin.jsp">Login Page</a></label>
                                                </strong></td>
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
