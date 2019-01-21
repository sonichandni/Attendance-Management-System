<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<script language="javascript" type="text/javascript">
        
        function getbatch_res(batch)
        {	
            if(batch)
            {
                            $.ajax({
                                            type:"GET",
                                            url:"dropdown.php",
                                            data:"batch="+batch,
                                            success:function(result)
                                            {
                                                     $("#dataTables-example").html(result);
                                            }
                                     });
            }
				
        }
</script>
<form method="post">
<button type="submit" id="back2" name="back2" class="btn btn-primary">Back</button>
<button class="btn btn-success btn-circle" type="button" onclick="printDiv()" style="float: right;"><i class="fa fa-print fa-2x" style="color: white;"></i></button>
</form>
    
<h2>Batch vise Report</h2>  
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
    <table class="table table-striped table-bordered table-hover"><form>
         <tr>
            <td><b>Select Batch :
                    <select id="batch" name="batch" class="form-control" onChange="return getbatch_res(this.value)">
                                <option value="">--Select Batch--</option>
                                <option value="1">B1</option>
                                <option value="2">B2</option>
                                <option value="3">B3</option>
                                <option value="4">B4</option>
                                <option value="5">B5</option>
                            </select>
               </td>
         </tr></form>
         </table>
                              <br>
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