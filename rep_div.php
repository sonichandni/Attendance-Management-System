<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<form method="post">
<button type="submit" id="back2" name="back2" class="btn btn-primary">Back</button>
</form>
    
<h2>Division Vise Report</h2>  
</div>
</div>
      <div class="row">
      <div class="col-md-12">
      <div class="panel panel-default">
      <div class="panel-body">
      <div class="row">
      <div class="col-md-12">
      <?php 
               $dr=$_SESSION["dr"];
         ?>
     <table class="table table-striped table-bordered table-hover" id="dataTables-example">
         <thead>
            <th>Date</th>
            <th>Roll Number</th>
            <th>Name</th>
            <th>Subject</th>
            <th>P/A</th>
         </thead>
         <tbody>
                   <?php
                   foreach ($dr as $d)
                   {
                       ?>
                        <tr>
                             <td><?php echo $d->date; ?></td>
                             <td><?php echo $d->s_rn; ?></td>
                             <td><?php echo $d->fnm." ".$d->lnm; ?></td>
                             <td><?php echo $d->sub_name; ?></td>
                             <td><?php if($d->present==1){
                                                    echo "<i class='fa fa-check fa-3x' style='color:green'><i>";
                                                }
                                               else {
                                                    echo "<font color='red' fontphase='Showcard Gothic' size='10%'><b>X</b></font>";
                                            }; ?></td>
                        </tr>    
                                    <?php
                   }
                                    ?>


<?php
    include 'footer.php';
?>