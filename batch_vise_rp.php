<?php
        include './Database/Controler.php';
        include 'role.php';  
        $batch_sub1=$_SESSION["bdata"];
?>  
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">


  function validate_form(f1)
  {
       if(isEmpty(f1.sub.value,"the Subject"))
      {
        alert(errMsg);
        f1.sub.focus();
        return (false);
      }
 }
  </script>
  </script>
<form method="post">
<button type="submit" id="back" name="back" class="btn btn-primary">Back</button>
</form>
       <h2>Select Details</h2>   
       </div>
       </div>
       <div class="row">
       <div class="col-md-12">
        <div class="panel panel-default">
        <div class="panel-body">
        <div class="table-responsive">
        <form method="post" onSubmit="return validate_form(this)">
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>       
                    <td>
                        <b>Select Subject :
                            <select id="sub" name="sub" class="form-control">
                                <option value="">--Select Subject--</option>
                                    <?php if(isset($batch_sub1))
                                                {
                                                    foreach($batch_sub1 as $b1)
                                                    {?>
                                    <option value="<?php echo $b1->usub_id?>"><?php echo $b1->sub_id; ?></option>
                                    <?php      }
                                                }?>
                            </select></b></td>
                            <td>
                                <b>Select Month:</b>
                                               <select class="form-control" id="dt2" name="dt2">
                                                   <option value="">Select Month</option>
                                                   <?php
                                                        $mn=array(
                                                            "January"=>1,
                                                            "February"=>2,
                                                            "March"=>3,
                                                            "April"=>4,
                                                            "June"=>6,
                                                            "July"=>7,
                                                            "August"=>8,
                                                            "Sepetmber"=>9,
                                                            "Ocober"=>10,
                                                            "November"=>11,
                                                            "December"=>12
                                                        );
                                                        foreach($mn as $k=>$v)
                                                        {
                                                   ?>
                                                   <option value="<?php echo $v; ?>"><?php echo $k; ?></option>
                                                        <?php }?>
                                               </select>
                            </td> 
                 </tr>
             </thead>
             <tr><td colspan="5"><center>
                   <button type="submit" id="batch_rep_submit" name="batch_rep_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Generate Report</button>
                   </center></td>
            </tr> 
            </table>
            </form>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
             <!-- /. PAGE INNER  -->
            </div>
<?php
    include 'footer.php';
?>