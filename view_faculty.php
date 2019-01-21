<?php
        include './Database/Controler.php';
        include 'role.php'; 
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<script language="javascript" type="text/javascript">
        
function getfac(v_fac)
{
          var v_fac=v_fac;
          if(v_fac)
          {
                    $.ajax({
                                      type:"GET",
                                      url:"dropdown.php",
                                      data:"v_fac="+v_fac,
                                      success:function(result)
                                      {
                                                $("#dataTables-example").html(result);
                                      }
                             });
         }
}
</script>
 <?php
    if($_SESSION["role"]==1)
    {
  ?>
          <h2>Faculty List</h2>   
          </div>
          </div>
          <div class="row">
          <div class="col-md-12">
          <div class="panel panel-default">
          <div class="panel-body">
          <div class="table-responsive">
          
          <form method="post">
          <b>Select Stream :<select class="form-control" id="c_id" name="c_id" onChange="return getfac(this.value)">
          <option value="">Select Stream</option>
          <?php if(isset($crs)){foreach($crs as $c){ ?>
          <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
          <?php }}?>
          </select></b> <br>
          
          <table class="table table-striped table-bordered table-hover" id="dataTables-example">
         
         <tbody id="vfac" name="vfac">
                                    
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
    
 }?>
<?php
    include_once 'footer.php';
?>