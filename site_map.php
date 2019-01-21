<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<?php
  if($_SESSION["role"]==1)
 {
  ?>
<h2>Site Map</h2> 
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="table-responsive">

<h4>Academic Year Management</h4>
<ul>
    <li><a href="academic_year.php">Add Academic Year</a></li>
    <li><a href="extra_holiday.php">Add Holidays</a></li>
    <li><a href="view_holiday.php">View Holidays</a></li>
</ul>
 <h4>Subject Management</h4>
 <ul>
     <li><a href="add_subject.php">Add Subject</a></li>
     <li><a href="view_sub.php">View Subject</a></li>
     <li><a href="dist_sub.php">Distribution of Subjects</a></li>
     <li><a href="combine_sub.php">Combine Subjects</a></li>
</ul>
 <h4>Faculty Management</h4>
 <ul>
     <li><a href="add_faculty.php">Add Faculty</a></li>
     <li><a href="view_faculty.php">View Faculty List</a></li>
     <li><a href="assign_sub.php">Assign Subject to Faculty</a></li>
 </ul>
 <h4>Student Management</h4>
 <ul>
     <li><a href="add_student.php">Add A Student</a></li>
     <li><a href="bulk_stu_det.php">Add Multiple Students</a></li>
     <li><a href="view_stu.php">View Students</a></li>
     <li><a href="assign_spec_sub.php">Assign Special Subject to Student</a></li>
 </ul>
 <h4>Transfer Students</h4>
 <ul>
     <li><a href="transfer_stu_sem.php">Semester Vise Transfirmation</a></li>
     <li><a href="transfer_stu_year.php">Year Vise Transfirmation</a></li>
 </ul>
 <h4><a href="at.php">Attendance</a></h4>
 <h4>Backup And Data</h4>
 <ul>
     <li><a href="backup_det.php">Student Data Backup</a></li>
     <li><a href="backup_at_det.php">Attendance Data Backup</a></li>
     <li><a href="backup_fifth_year.php">Remove Data</a></li>
 </ul>
 <h4><a  href="report.php">Report</a></h4>
 <h4><a  href="contact_us.php">Contact Us</a></h4>
<?php
}
 else {
     ?>
<div class="row">
    <div class="col-md-12"></div>
    <img src="img/ad.jpg">
    <?php
    
 }

include 'footer.php';
?>

