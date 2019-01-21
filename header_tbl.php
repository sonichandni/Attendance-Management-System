<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Free Bootstrap Admin Template : Binary Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
     
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">KS AMS</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><!-- Last access : 30 May 2014 &nbsp; -->
      <form method="post"> 
      <button id="logout" name="logout" class="btn btn-danger square-btn-adjust">Logout</button>
      </form>
  </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a  href="dashboard.php"><i class="fa fa-dashboard fa-3x"></i>Home Page</a>
                    </li>
					
                    <li>
                        <a  href="at.php?at='at'"><i class="fa fa-book fa-3x"></i> Attendance</a>
                    </li>
                    <li>
                        <a  href="academic_year.php"><i class="fa fa-calendar-o fa-3x"></i> Academic Year</a>
                    </li>
                    <li>
                        <a  href="report.php"><i class="fa fa-envelope fa-3x"></i>Report</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-users fa-3x"></i>Student<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add_student.php">Add Student</a>
                            </li>
                            <li>
                                <a href="view_stu.php">View Student</a>
                            </li>
                            <li>
                                <a href="bulk_stu.php">Bulk Student Add</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-magic fa-3x"></i>Schedule Generator<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">MBA<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">First Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?mba_sem1='ms1'">Sem 1</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?mba_sem2='ms2'">Sem 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Second Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?mba_sem3='ms3'">Sem 3</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?mba_sem4='ms4'">Sem 4</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Third Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?mba_sem5='ms5'">Sem 5</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?mba_sem6='ms6'">Sem 6</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Forth Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?mba_sem7='ms7'">Sem 7</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?mba_sem8='ms8'">Sem 8</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Fift Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?mba_sem9='ms9'">Sem 9</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?mcs_sem10='ms10'">Sem 10</a>
                                            </li>
                                        </ul>
                                    </li>

                                </ul> 
                            </li>
                            <li>
                            <a href="#">M.Sc. (CA & IT)<span class="fa arrow"></span></a>
                           <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">First Year<span class="fa arrow"</span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?msc_sem1='mss1'">Sem 1</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?msc_sem2='mss2'">Sem 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Second Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?msc_sem3='mss3'">Sem 3</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?msc_sem4='mss4'">Sem 4</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Third Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?msc_sem5='mss5'">Sem 5</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?msc_sem6='mss6'">Sem 6</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Forth Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?msc_sem7='mss7'">Sem 7</a>
                                            </li>
                                            <li>
                                                <a href="add_schedule.php?msc_sem8='mss8'">Sem 8</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Fift Year<span class="fa arrow"></span></a>
                                        <ul class="nav nav-forth-level">
                                            <li>
                                                <a href="add_schedule.php?mcs_sem9='mss9'">Sem 9</a>
                                            </li>
                                            
                                            
                                        </ul>
                                    </li>

                                </ul>
                               
                            </li>
                        </ul>
                      </li>
                        <li>
                        <a href="#"><i class="fa fa-users fa-3x"></i>Faculty<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add_faculty.php">Add Faculty</a>
                            </li>
                            <li>
                                <a href="#">View Faculty</a>
                            </li>
                            <li>
                                <a href="assign_sub.php">Assign Subjects</a>
                            </li>
                        </ul>
                    </li>
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                    
        