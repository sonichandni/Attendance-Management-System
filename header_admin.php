<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>K. S. School of Business Management</title>
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
                <a class="navbar-brand"><img src="img/ks_logo.jpg"  width="20%" height="100%" style="border-radius:10%">&nbsp;KS AMS</a> 
            </div>
 <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><!-- Last access : 30 May 2014 &nbsp; -->
     
      <form method="post"> 
      <button id="site_map" name="site_map" class="btn btn-danger square-btn-adjust">Site Map</button>
      <button id="logout" name="logout" class="btn btn-danger square-btn-adjust">Logout</button>
      </form>
 </div>
        </nav>   
           <!-- /. NAV TOP  -->
         <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a  href="dashboard.php"><i class="fa fa-home fa-2x"></i>Home Page</a>
                    </li>
	<li>
                        <a href="#"><i class="fa fa-calendar fa-2x"></i>Academic Year Management<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="academic_year.php">Add Academic Year</a>
                            </li>
                            <li>
                                <a href="extra_holiday.php">Add Holiday</a>
                            </li>
                            <li>
                                <a href="view_holiday.php">View Holidays</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-book fa-2x"></i>Subject Management<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add_subject.php">Add Subject</a>
                            </li>
                            <li>
                                <a href="view_sub.php?vs='vs'">View Subjects</a>
                            </li>
                            <li>
                                <a href="dist_sub.php">Distribution Of Subject</a>
                            </li>
                            <li>
                                <a href="combine_sub.php">Combine Subject</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-users fa-2x"></i>Faculty Management<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add_faculty.php">Add Faculty</a>
                            </li>
                            <li>
                                <a href="view_faculty.php">View Faculty</a>
                            </li>
                            <li>
                                <a href="assign_sub.php">Assign Subjects</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-users fa-2x"></i>Student Management<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="add_student.php">Add A Student</a>
                            </li>
                            <li>
                                <a href="bulk_stu_det.php">Add Multiple Student</a>
                            </li>
                            <li>
                                <a href="view_stu.php">View Student</a>
                            </li>
                            <li>
                                <a href="assign_spec_sub.php">Assign Special Subject</a>
                            </li>
                            <li>
                                <a href="divide_batch.php?db='y'">Divide Batches</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-exchange fa-2x"></i>Transfer Student<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                                    <li>
                                        <a href="transfer_stu_sem.php">Semester Vise Transfer</a>
                                    </li>
                                    <li>
                                        <a href="transfer_stu_year.php">Year Vise Transfer</a>
                                    </li>
                                </ul>
                    </li>
                    <li>
                        <a  href="at.php"><i class="fa fa-file fa-2x"></i> Attendance</a>
                    </li>
                    <li><a href="#"><i class="fa fa-download fa-2x"></i>Backup Data<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="backup_det.php">Student Data Backup</a>
                                    </li>
                                    <li>
                                        <a href="backup_at_det.php">Attendance Data Backup</a>
                                    </li>
                                    <li>
                                        <a href="backup_fifth_year.php">Remove Fifth Year Data</a>
                                    </li>
                                </ul>
                    </li>
                    <li>
                        <a  href="report.php"><i class="fa fa-folder fa-2x"></i>Report</a>
                    </li>
                    <li>
                        <a  href="contact_us.php"><i class="fa fa-external-link fa-2x"></i>Contact Us</a>
                    </li>
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                    
        