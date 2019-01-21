<?php
include './Database/Controler.php';
include 'role.php';
?>

                                    
                                
<!-- /. NAV SIDE  -->
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                             <th>Roll Number</th>
                                            <th>Name</th>
                                            
                                            <th>Gender</th>
                                            <th>Attendance&emsp;&emsp;
                                            <form method="post">
                                            <button type="submit" id="all_ab" name="all_ab" class="btn btn-primary">All Absent</button>
                                            <button type="submit" id="all_pr" name="all_pr" class="btn btn-primary">All Present</button>
                                            </form>
                                            </th>
                                            
                                            </th>
                                            
                                        </tr>
                                    </thead>
                                    <?php 
                                    
                                $data=$_SESSION["d"];
                                $cid=$_SESSION["att"]["stream"];
                                
                                $dr=$_SESSION["att"]["div"];
                                $sem=$_SESSION["att"]["sem"];
                                $where=array(
                                     "division"=>$dr,
                                    "sem"=>$sem,
                                    "c_id"=>$cid
                                 );
                                $q1=$md->sel_where($con, "student", $where);
                                   //print_r($q1);
                                   //echo "<pre>";exit;
                                   $cnt=0;
                                   //$cnt1=0;
                                   //echo "<pre>";
                               //print_r($q1);exit;
                                 
                                 
                                   ?>
                                    <form method="post" role="form"   enctype="multipart/form-data">
                                           <tbody>
                                            <?php 
                                            $_SESSION["chandni"]=sizeof($q1);
                                            
                                       foreach ($q1 as $k => $v) {
                                           $cnt++;
                                        ?>
                                    <tr>
                                        <td><?php echo $v->s_rn." ".$cnt; ?></td>
                                            <td><?php echo $v->fnm." ".$v->lnm." ".$cnt; ?></td>
                                            <td><?php if($v->s_gen=='0') echo "Male"; else echo "Female"?></td>
                                            <td>
                                                <?php
                                                if(isset($_REQUEST["all_ab"]))
                                                {
                                                
                                                ?><input type="radio" id="<?php echo "att".$cnt; ?>" name="<?php echo "att".$cnt; ?>" value="1">Present 
                                                &nbsp;&nbsp;
                                  <input type="radio" id="<?php echo "att".$cnt; ?>" name="<?php echo "att".$cnt; ?>" value="0"  checked>Absent
                                <input type="hidden" value="<?php echo $v->s_enrl; ?>" id="<?php echo "rn".$cnt; ?>" name="<?php echo "rn".$cnt; ?>">
                                <input type="hidden" value="<?php echo $cnt; ?>" id="total" name="total">
                                                <?php
                                                }
                                                elseif(isset($_REQUEST["all_pr"]))
                                                {
                                                ?>
                                                 <input type="radio" id="<?php echo "att".$cnt; ?>" name="<?php echo "att".$cnt; ?>" value="1" checked>Present 
                                                &nbsp;&nbsp;
                                  <input type="radio" id="<?php echo "att".$cnt; ?>" name="<?php echo "att".$cnt; ?>" value="0">Absent
                                <input type="hidden" value="<?php echo $v->s_enrl; ?>" id="<?php echo "rn".$cnt; ?>" name="<?php echo "rn".$cnt; ?>">
                                <input type="hidden" value="<?php echo $cnt; ?>" id="total" name="total">
                                <?php
                                                }
                                                else
                                                {
                                                 ?>
                                                 <input type="radio" id="<?php echo "att".$cnt; ?>" name="<?php echo "att".$cnt; ?>" value="1" checked>Present 
                                                &nbsp;&nbsp;
                                  <input type="radio" id="<?php echo "att".$cnt; ?>" name="<?php echo "att".$cnt; ?>" value="0">Absent
                                <input type="hidden" value="<?php echo $v->s_enrl; ?>" id="<?php echo "rn".$cnt; ?>" name="<?php echo "rn".$cnt; ?>">
                                <input type="hidden" value="<?php echo $cnt; ?>" id="total" name="total">
                                <?php
                                                }
                                                ?>
                                            </td>
                                    </tr>
                                        
                                         <?php } ?>
 
                                        <?php if($cnt==11)
                                        { 
                                            ?>
                                        
                                    </tbody> 
                                      <tr><td colspan="5"><center>
                                          <button type="submit" id="att_submit" name="att_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
                              </center> </td></tr>
                                      <?php } ?>
                                   
                                    </form>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
            
                   
             <!-- /. PAGE INNER  -->
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