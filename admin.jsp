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
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
    <script>
    $(document).ready(function()
    {
        $("#file").on('change',function()
        {
            var filename = $('input[type=file]').val().split('\\').pop();
            fileExtension = filename.replace(/^.*\./, '');
            $("#ext").val(fileExtension);
        });
    });
   
    </script>  
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
                
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <center>
                        <form action="SomeUpload" method="post"  enctype="multipart/form-data" id="form2">
                           
                            <center>
                               
                            </center>
                    <center>
                        <div style="width: 100%;float:left;">
                            
                            <div style="width: 50%;float:left;">
                                
                                  <img src="images/a.png" width="500" height="500">
                            </div>
                            <div style="width: 50%;float:left; margin-top: 200px;">
                                  <input type="text" placeholder="Filename..." name="fname" required  style="width:250px;height: 40px;border: 1px solid; border-color: #A9A9A9;padding-left: 20px;" />
                               <br/><br/> <center> <input type="file" id="file" name="file" />   <br/><br/>
                                    
                                    <input type="hidden" id="ext" name="ext" value=""/>
                                <input type="submit" name="Submit" value="Submit" style="color: #FFFFFF; height: 30px; background-color: #8A2BE2; border-color: #8A2BE2;" />
                            
                                </center>
                            
                            </div>
                            
                        </div>
                      
                    </center>
                  
              </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
                    

                </div>
                <!-- /. ROW  -->
                
               
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
