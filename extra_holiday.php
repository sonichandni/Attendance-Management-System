<?php
    include './Database/Controler.php';
    include 'role.php';
    
?>
<script language="javascript" type="text/javascript">

function takedate(dt)
{
                   $.ajax({
                                    type:"GET",
                                    url:"dropdown.php",
                                    data:"dt="+dt,
                                    success:function(result)
                                    {
                                         if(result!="")
                                         {
                                              $("#days").val($("#days").val()+result+" , ");
                                          }
                                          else
                                               alert("You cann't add past date");
                                     }
                             });
}
    
</script>
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
function validate_form(f1)
  {
       if(isEmpty(f1.date.value,"the Date.."))
      {
        alert(errMsg);
        f1.date.focus();
        return (false);
      }
  }
</script>
 <?php
  if($_SESSION["role"]==1)
  {
  ?>
<h2><i class="fa fa-plane">&nbsp;&nbsp;Add Holiday</i></h2>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example1">
      <thead>
          <form method="post" role="form"   enctype="multipart/form-data" onSubmit="return validate_form(this)" >
     </thead>
     <tbody>
          <tr>
               <td><label>Date : </label><br>
                      <input type="date" name="date" id="date" class="form-control" onchange="return takedate(this.value)">
               </td>
               <td><label>Days : </label><br>
                      <input type="text" name="days" id="days" class="form-control">
               </td>
         </tr>
         <tr>
               <td colspan="8" style="width:2%;"><center>
                        <button type="submit" id="hd_submit" name="hd_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
                        </center>
               </td>
         </tr>
        </tbody>
         </form>
 </table>


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