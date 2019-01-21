<?php
    include './Database/Controler.php';
    include 'role.php';
?>
 <?php
  if($_SESSION["role"]==1)
  {
  ?>
<h2>Subject List</h2>  
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<div class="col-md-12">
          <?php 
                    $sd=$_SESSION["subdata"];
          ?>
          <table class="table table-striped table-bordered table-hover" id="dataTables-example">
          <thead>
                    <th>Subject ID</th>
                    <th>Name</th>
                    <th>Stream</th>
                    <th>Semester</th>
                    <th>Faculty</th>
          </thead>
          <tbody>
                   <?php foreach($sd as $s)
                       {
                             if($s->sub_name!="HR" && $s->sub_name!="Marketing" && $s->sub_name!="Finance")
                             {?>
                                    <tr>
                                        <td><?php echo $s->sub_id; ?></td>
                                        <td><?php echo $s->sub_name; ?></td>
                                        <!--<?php /*if($s->sub_type==1) echo "Core"; else echo "Elective"*/ ?></td>-->
                                        <td><?php if($s->c_id==0) echo "MSc"; else echo "MBA" ?></td>
                                        <td><?php echo $s->sem_no; ?></td>
                                        <td><?php echo $s->fac_name; ?></td>
                                    </tr>
                                        <?php }} ?>
                                    </tbody>
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
            <?php
            }
 else {
     ?>
<div class="row">
    <div class="col-md-12"></div>
    <img src="img/ad.jpg">
    <?php
 }
?>
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