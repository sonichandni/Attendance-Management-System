<?php
        include './Database/Controler.php';
        include 'header_admin.php'; 
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
<script language="javascript" type="text/javascript">
function getfac(div)
{
	var crs=document.getElementById("c_id").value;
                    //alert(crs);
                   if(div)
                   {
                         $.ajax({
                                        type:"GET",
                                        url:"dropdown.php",
                                        data:"crs_spec="+crs+" "+div,
                                        success:function(result)
                                        {
                                             $("#DataTables_Table_0").html(result);
                                        }
                                   });
                    }
                                                                             
}

</script>
 <?php
    if($_SESSION["role"]==1)
    {
  ?>
<h2>Assign Special Subjects to Student</h2>   
</div>
</div>
                 <!-- /. ROW  -->
<div class="row">
<div class="col-md-12">
<!-- Advanced Tables -->
<div class="panel panel-default">
    <div class="panel-body">
         <div class="table-responsive">
         <form method="post" >
            <table class="table table-striped table-bordered table-hover" id="dataTables-example1">
                <tr>
                <td>
                    <b>Select Stream :<select class="form-control" id="c_id" name="c_id">
                        <option value="">Select Stream</option>
                            <?php if(isset($crs))
                                {
                                    $cnt=0;
                                    foreach($crs as $c)
                                    {
                                        $cnt++; ?>
                                <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
                                <?php if($cnt=='2'){break;}}}?>
                                </select></b> </td>
                 <td>
                    <b>Select Division :<select class="form-control" id="division" name="division" onChange="return getfac(this.value)">
                        <option value="">Select Division</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                            
                                </select></b> </td>
                </tr>
             </table>
             <table class="table table-bordered table-striped table-hover js-basic-example dataTable" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
             </table>
         </form>
         </div>
         </div>
         </div>
                    <!--End Advanced Tables -->
         </div>
         </div>
 <!-- /. ROW  -->
        </div>
 </div>
             <!-- /. PAGE INNER  -->
            </div>
<?php
 }
 else
 {
 ?>
<div class="row">
    <div class="col-md-12"></div>
    <img src="img/ad.jpg">
<?php
}
    include 'footer.php';
?>