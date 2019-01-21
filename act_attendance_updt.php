<?php
include './Database/Controler.php';
include 'role.php';
//print_r($_SESSION["att"]);
?>
<script>
        function like(rn)
        {
               
                
                var i=rn;
                
                
      
                                            
	$.ajax({
                 
					type: "GET",
					url:"at_clr.php",
					data:"lid="+document.getElementById(i).style.color,
                                        success:function(result)
					{
                                            
                                            if(document.getElementById(i).style.color=="green")
                                            {
                                                $("#").html(result);
                                                $("#ch"+i).val(result);
                                                var c="red";
                                                document.getElementById(i).style.color=c;
                                            }
                                            else
                                            {
                                                $("#").html(result);
                                                result='1';
                                                $("#ch"+i).val(result);
                                                var c="green";
                                                document.getElementById(i).style.color=c;
                                            }
                                            
					}
					
					
       });		
       
        }
        </script>
           
                        
                  <h2>Attendance Sheet</h2>         
                    </div>
                </div>
                 <!-- /. ROW  -->
                 
                  <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                   <br>       
                        &emsp;<b>Faculty Name:</b> <?php echo $_SESSION["my_fac"]; ?>
                                 &emsp;&emsp;&emsp;<b> Subject:</b><?php 
                                 foreach($_SESSION["sn"] as $sn)
                                 {
                                        echo $sn->sub_name;
                                 }
                                 ?>  
                                &emsp;&emsp;&emsp; <b>  Date:</b><?php echo $_SESSION["att"]["dt"]; ?>
                                &emsp;&emsp;&emsp; <b> Division:</b><?php echo $_SESSION["att"]["div"]; 
                                ?>
                                <br>
                                
                                <?php
                                if($_SESSION["new_att"]){ 
                                ?>
                                
                                <div style="float:right;">
                                <form method="post">
                                
                                <button type="submit" id="all_pr" name="all_pr" class="btn btn-success">All Present</button>
                                <button type="submit" id="all_ab" name="all_ab" class="btn btn-danger">All Absent</button>&emsp;
                                </form>
                                </div><br><br>
                       
                    <!-- Advanced Tables -->
                    <center>
                                <form method="post" role="form" enctype="multipart/form-data">
                                <?php                                             
                                            $_SESSION["atotal"]=sizeof($_SESSION["q1"]);
                                            //echo "hi".$_SESSION["sid"];
                                             $cnt=0;
                                        
                                     foreach ($_SESSION["new_att"] as $k => $v) 
                                     {
                                         $cnt++;
                                     ?>
                                     <a href="#">
                                         <i class="fa fa-user fa-2x" id="<?php echo $v->s_enrl;?>" name="<?php echo $v->s_enrl;?>"
                                            <?php
                                     if(isset($_REQUEST["all_pr"]))
                                     {
                                         echo 'style="color:green;"';
                                     }
                                     elseif(isset($_REQUEST["all_ab"]))
                                     {
                                         echo 'style="color:red;"';
                                     }
                                     else
                                     {
                                         if($v->present=='1')
                                         {
                                             echo 'style="color:green;"';
                                         }
                                         else
                                         {
                                             echo 'style="color:red;"';
                                         }
                                     }
                                     ?>
                                            onClick="return like(<?php echo $v->s_enrl;?>);">
                                             <?php echo "<br><h6>".$v->s_rn."</h6>"; ?>
                                         </i>
                                     </a>                               
                                    <input type="hidden" value="<?php echo $v->s_enrl; ?>" id="<?php echo "r".$cnt; ?>" name="<?php echo "r".$cnt; ?>">
                                    <input type="hidden" name="<?php echo "ch".$v->s_enrl; ?>" id="<?php echo "ch".$v->s_enrl; ?>" 
                                    <?php
                                     if(isset($_REQUEST["all_pr"]))
                                     {
                                         echo 'value="1"';
                                     }
                                     elseif(isset($_REQUEST["all_ab"]))
                                     {
                                         echo 'value="0"';
                                     }
                                     else
                                     {
                                         if($v->present=='1')
                                         {
                                            echo 'value="1"';
                                         }
                                         else
                                         {
                                            echo 'value="0"';
                                         }
                                            
                                     }
                                     
                                     ?>
                                    >
                                    &emsp;
                                    <?php
                                       } 
                                     
                                      ?> 
                                 
                                      
                                    
                                    <center><br>
                                          <button type="submit" id="att_submit_updt" name="att_submit_updt" value="submit" class="btn btn-primary"style="height: 100%; width: 30%;">Submit</button>
                              </center> <br>
                                    </form>
                        <?php
                         }
                                      else
                                      {
                                          echo "<br><center><b><h3>No Student Available...<br>Please Add students First...</h3></b></center><br>";
                                          echo "<a href='bulk_stu_det.php'><center><b>Add Multiple Stuudent From here</b></center></a><br>";
                                          
                                      }
                        ?>
                                    </center>
                                </div>
                        </div>
                    </div>
                    <!--  end  Context Classes  -->
                </div>
            </div>
                <!-- /. ROW  -->
        
 </div>
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
   <?php
include 'footer.php';
   ?>