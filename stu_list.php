<?php
    include './Database/Controler.php';
    include 'role.php';
?>

<form method="post">
<button type="submit" id="back7" name="back7" class="btn btn-primary">Back</button>
</form>
    
<h2>Students List</h2>  
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<div class="col-md-12">
          <?php 
                $dr=$_SESSION["sl"];
         ?>
         <form method="post">
         <table class="table table-striped table-bordered table-hover" id="dataTables-example">
         <thead>
               <th>Sr No.</th>
               <th>Roll Number</th>
               <th>Name</th>
               <th>Update</th>
               <th>View More</th>
               <th>Delete</th>
          </thead>
          <tbody>
          <?php
                   $cnt=0;
                   if(isset($dr)){
                   foreach ($dr as $d)
                   {
                             $cnt++;
         ?>
                   <tr>
                       <td><?php echo $cnt; ?></td>
                       <td><?php echo $d->s_rn; ?></td>
                       <td><?php echo $d->fnm." ".$d->lnm; ?></td>
                       <td><center><a href="stu_update.php?s_enrlup=<?php echo $d->s_enrl; ?>"><button class="btn btn-primary btn-circle" type="button" name="stu_update"><i class="fa fa-refresh fa-2x" style="color: white;"></i></button></a></td>
                       <td><center><a href="view_more.php?s_enrlvm=<?php echo $d->s_enrl; ?>"><button class="btn btn-success btn-circle" type="button"><i class="fa fa-info-circle fa-2x" style="color: white;"></i></button></a></td>
                       <td><center><a href="stu_list.php?s_enrldel=<?php echo $d->s_enrl; ?>"><button class="btn btn-danger btn-circle" type="button"><i class="fa fa-trash-o fa-2x" style="color: white;"></i></button></a></td>
                   </tr>    
         <?php
                   }}
          ?>
         </table>
         </form>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
         <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>