<?php
        include './Database/Controler.php';
        include 'header_admin.php'; 
        if($_SESSION["role"]==1)
        {
 
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<script language="javascript" type="text/javascript">
        
function getfac(crs)
{
	var crs=crs;
                   if(crs)
                   {
                         $.ajax({
                                      type:"GET",
                                      url:"dropdown.php",
                                      data:"crs_fac="+crs,
                                      success:function(result)
                                      {
                                           $("#fac").html(result);
                                      }
                                  });
                         $.ajax({
                                      type: "GET",
		url:"dropdown.php",
		data:"crs_sub="+crs,
		success:function(result)
		{
                                            $("#subject").html(result);
		}
                                    });
                   }
}
function check(csub)
{
                         $.ajax({
                                      type: "GET",
		url:"dropdown.php",
		data:"csub="+csub,
		success:function(result)
		{
                                            $("#que").html(result);
		}
                                    });
}
function page(cv)
{
             if(cv==1)
             {
                 window.location='dist_sub.php';
             }
             else
             {
                 window.location='combine_sub.php';
             }
}
</script>
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
function validate_form(f1)
{
      if(isEmpty(f1.c_id.value,"the Stream"))
      {
        alert(errMsg);
        f1.c_id.focus();
        return (false);
      }
      if(isEmpty(f1.fac.value,"the Faculty"))
      {
        alert(errMsg);
        f1.fac.focus();
        return (false);
      }
      if(isEmpty(f1.subject.value,"the Subject"))
      {
        alert(errMsg);
        f1.subject.focus();
        return (false);
      }
}
</script>
<h2>Assign Subjects</h2>   

</div>
</div>
                 <!-- /. ROW  -->
<div class="row">
<div class="col-md-12">
<!-- Advanced Tables -->
<div class="panel panel-default">
                        
<div class="panel-body">
<div class="table-responsive">
    <form method="post" onSubmit="return validate_form(this)">
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr>
            <td colspan="2">
                <b>Select Stream :<select class="form-control" id="c_id" name="c_id" onChange="return getfac(this.value)">
                    <option value="">Select Stream</option>
                    <?php if(isset($crs)){$cnt=0;foreach($crs as $c){$cnt++; ?>
                     <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
                     <?php if($cnt=='2'){break;}}}?>
                     </select></b> </td>
           </tr>
           <tr>
           <td>
                <b>Select Faculty :
                <select class="form-control" id="fac" name="fac" >
                </select></b>
           </td>
           <td>
                <b>Select Subject :<select class="form-control" id="subject" name="subject" onchange="return check(this.value)">
                </select></b>
           </td>
           </tr>
           <tr id="que">
           </tr>                    
        </thead>
        <tr><td colspan="5"><center>
                <button type="submit" id="subup_submit" name="subup_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
        </center></td></tr> 
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
    
 }
    include 'footer.php';
?>