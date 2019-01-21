<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<script language="javascript" type="text/javascript">
        
        function getRn_res(rn)
        {
	var rn=rn;
                   if(rn)
                   {
                             $.ajax({
                                                type:"GET",
                                                url:"dropdown.php",
                                                data:"ov_rn="+rn,
                                                success:function(result)
                                                {
                                                          $("#dataTables-example").html(result);
                                                }
                                       });
                             $.ajax({
                                                type:"GET",
                                                url:"dropdown.php",
                                                data:"final="+rn,
                                                success:function(result)
                                                {
                                                          $("#final").html(result);
                                                }
                                      });
                   }
}
</script>
<form method="post">
<button type="submit" id="back8" name="back8" class="btn btn-primary">Back</button>
<button class="btn btn-success btn-circle" type="button" onclick="printDiv()" style="float: right;"><i class="fa fa-print fa-2x" style="color: white;"></i></button>
</form>
<h2>Overall Report</h2>  
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<div class="col-md-12">
         <?php 
                   $dr= $_SESSION["overall_stu"];
         ?>
         <b>Select Roll Number:
         <select class="form-control" id="ov_rn" name="ov_rn" style="width:50%;" onChange="return getRn_res(this.value)">
         <option>Select Roll Number</option>
          <?php 
                   foreach($dr as $d)
                   {?>
                             <option value="<?php echo $d->s_enrl; ?>">
                             <?php echo $d->s_rn."-".$d->fnm." ".$d->lnm; ?></option>
        <?php }?> 
         </select>
         </b><br>
         <div id="printthis">
         <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        
         </table>
         <table class="table table-striped table-bordered table-hover" id="final">
                                        
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