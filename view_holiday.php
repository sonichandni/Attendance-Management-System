<?php
        include './Database/Controler.php';
        include 'header_admin.php';
        $where=array(
            "holiday"=>1
            );
        $hl=$md->sel_where($con, "days", $where);
?> 
<h2>Holiday List</h2>   
                        
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="table-responsive">

<table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
         <th>Date</th>
         <th>Day</th>
</thead>
<tbody>
<?php
          foreach ($hl as $h)
          {
?>
                   <tr>
                       <td><?php echo $h->date;?></td>
                       <td><?php echo $h->day;?></td></tr>
<?php } ?>
</tbody>
                                    
 </table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

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