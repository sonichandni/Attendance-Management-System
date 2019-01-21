<?php
        include './Database/Controler.php';
        include 'header_admin.php'; 
        
        if($_SESSION["role"]==1)
        {
  
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<script language="javascript" type="text/javascript">
function getSub(cid)
{
             $.ajax({
                             type: "GET",
                             url:"dropdown.php",
                             data:"crs_sub2="+cid,
                             success:function(result)
                            {
		$("#subject").html(result);
                            }
	});
}
function getfac(part)
{
            var p=part;
            var sub=document.getElementById("subject").value;
            var crs=document.getElementById("c_id").value;
            $.ajax({
                             type: "GET",
                             url:"dropdown.php",
                             data:"part="+p,
                             success:function(result)
                            {
                                      $("#part1").html(result);
                            }
                     });
             $.ajax({
                            type: "GET",
                            url:"dropdown.php",
                            data:"crs_fac="+crs,
                            success:function(result)
                            {
                                      if(p==2)
                                      {
                                             $("#fac1").html(result);
                                             $("#fac2").html(result);
                                      }
                                      else
                                      {
                                             $("#fac1").html(result);
                                             $("#fac2").html(result);
                                             $("#fac3").html(result);
                                      }
                             }
                        });
                        
              $.ajax({
                            type: "GET",
                            url:"dropdown.php",
                            data:"prt_sub="+sub,
                            success:function(result)
                            {
                                       if(p==2)
                                       {
                                                $("#s1").val(result+" x%");
                                                $("#s2").val(result+" y%");
                                       }
                                       else
                                       {
                                                $("#s1").val(result+" x%");
                                                $("#s2").val(result+" y%");
                                                $("#s3").val(result+" z%");
                                       }
                             }
                        });
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
      if(isEmpty(f1.subject.value,"the Subject"))
      {
        alert(errMsg);
        f1.subject.focus();
        return (false);
      }
      if(isEmpty(f1.fac1.value,"the Faculty"))
      {
        alert(errMsg);
        f1.fac1.focus();
        return (false);
      }
      if(isEmpty(f1.fac2.value,"the Faculty"))
      {
        alert(errMsg);
        f1.fac2.focus();
        return (false);
      }
      
  }
</script>
    <h2>Distribute Subject</h2>   
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
              <td><b>Select Stream :<select class="form-control" id="c_id" name="c_id" onchange="return getSub(this.value);">
                     <option value="">Select Stream</option>
                     <?php if(isset($crs)){$cnt=0;foreach($crs as $c){$cnt++; ?>
                     <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
                     <?php if($cnt=='2'){break;}}}?>
                     </select></b> </td>
              <td><b>Select Subject :<select class="form-control" id="subject" name="subject" >
                     </select></b>
              </td>
              <td><b>Select the no. of partition :
                     <select class="form-control" id="part" name="part" onChange="return getfac(this.value)">
                     <option value="">Select the no. </option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     </select></b>
              </td>
              </tr>
              <tr id="part1">
                                    
             </tr>
           </thead>
           <tr><td colspan="5"><center>
                   <button type="submit" id="prt_submit" name="prt_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
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