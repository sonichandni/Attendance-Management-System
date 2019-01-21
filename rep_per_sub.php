<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<script language="javascript" type="text/javascript">
        
        function getsub_res(subrp)
        {
            //alert(subrp);
				
                                                                           if(subrp)
                                                                           {
                                                                                dt2=document.getElementById("dt2").value;
                                                                                ll=document.getElementById("per1").value;
                                                                                ul=document.getElementById("per2").value;
                                                                                if(dt2=="")
                                                                                {
                                                                                    alert("Please select the Month");
                                                                                }
                                                                                else if(ll=="")
                                                                                {
                                                                                    alert("Please enter the lower limit");
                                                                                }
                                                                                else if(ul=="")
                                                                                {
                                                                                    alert("Please enter the upper limit");
                                                                                }
                                                                                else
                                                                                {
                                                                                     $.ajax({
                                                                                        type:"GET",
                                                                                        url:"dropdown.php",
                                                                                        data:"subrp1="+subrp+" ul= "+ul+" ll= "+ll+" dt2= "+dt2,
                                                                                        success:function(result)
                                                                                        {
                                                                                            $("#dataTables-example").html(result);
                                                                                        }
                                                                                      });
                                                                                 
                                                                                 } 
                                                                            }
        }
</script>
<form method="post">
<button type="submit" id="back10" name="back10" class="btn btn-primary">Back</button>
<button class="btn btn-success btn-circle" type="button" onclick="printDiv()" style="float: right;"><i class="fa fa-print fa-2x" style="color: white;"></i></button>
</form>
    
<h2>Subject vise Percentage vise Report</h2>  
</div>
</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <?php 
                                    //$dr= $_SESSION["sub_rp"];
                                   
                                     ?>
                                  
                                    <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td>
                                                <b>Lower Limit: (In %)</b>
                                                <input type="text" id="per1" name="per1" class="form-control">
                                            </td>
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
                                    <tr>
                                        <td>
                                            <b>Upper Limit: (In %)</b>
                                            <input type="text" id="per2" name="per2" class="form-control">
                                        </td>
                                        <td><b>Select Subject:
                                     <select class="form-control" id="sub_rn" name="sub_rn" onChange="return getsub_res(this.value)">
                                         <option>Select Subject</option>
                                         <?php 
                                         if($_SESSION["subrp_wh"][0]==1 && $_SESSION["subrp_wh"][1]==9 || $_SESSION["subrp_wh"][1]==10)
                                         {
                                                $dr=$_SESSION["sub_rp1"];
                                                foreach($dr as $d)
                                                {
                                                    if($d->sub_id!="HR" && $d->sub_id!="Marketing" && $d->sub_id!="Finance")
                                                    {
                                                ?>
                                                <option value="<?php echo $d->usub_id; ?>">
                                                <?php echo $d->sub_id; ?></option></b>
                                                <?php
                                                    }
                                                }
                                                        
                                                $dr=$_SESSION["sub_rp2"];
                                                foreach($dr as $d)
                                                {
                                                ?>
                                                <option value="<?php echo $d->uesub_id." ".$d->usub_id; ?>">
                                                <?php echo $d->sub_id; ?></option></b>
                                                <?php
                                                }
                                                   
                                         }
                                         else
                                         {
                                             $dr=$_SESSION["sub_rp"];
                                                        foreach($dr as $d)
                                                        {
                                                            ?>
                                                            <option value="<?php echo $d->usub_id; ?>">
                                                            <?php echo $d->sub_id; ?></option></b>
                                                            <?php
                                                        }
                                         }
                                         ?>
                                            
                                            </select></td>
                                    </tr>
                                    </table>
                                    <br>
                                     <div id="printthis">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        
                                    </table>
                                   
                                    </div>
                                </div>
                                
<script type="text/javascript">
	function printDiv(printthis) {
     var printContents = document.getElementById('printthis').innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
</script>
<?php
    include 'footer.php';
?>