<?php
        include './Database/Controler.php';
        include 'header_admin.php';
?>
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<script language="javascript" type="text/javascript">
        
function getSpec(sem)
{
      var sp=document.getElementById("sp").value;
      var cid=document.getElementById("cr").value;
      if(sp==1)
      {
           $.ajax({
                      type:"GET",
                      url:"dropdown.php",
                      data:"add_spec_sub="+cid+" sem= "+sem,
                      success:function(result)
                      {
                            if(cid==1 && sp==1 && sem==9 || sem==10)
                            {
                                 $("#add_spec").html(result);
                             }
                      }
                    });
       }
}
</script>

<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
function validate_form(f1)
  {
      if(isEmpty(f1.sid.value,"the subject Id.."))
      {
        alert(errMsg);
        f1.sid.focus();
        return (false);
      }
      if(isEmpty(f1.subnm.value,"the Subject Name.."))
      {
        alert(errMsg);
        f1.subnm.focus();
        return (false);
      }
      if(isEmpty(f1.cr.value,"the Course Name.."))
      {
        alert(errMsg);
        f1.cr.focus();
        return (false);
      }
      /*if(isEmpty(f1.sp.value,"the Status of Subject.."))
      {
        alert(errMsg);
        f1.sp.focus();
        return (false);
      }*/
      if(isEmpty(f1.type.value,"the Type of Subject.."))
      {
        alert(errMsg);
        f1.type.focus();
        return (false);
      }
      if(isEmpty(f1.sem.value,"the Semester.."))
      {
        alert(errMsg);
        f1.sem.focus();
        return (false);
      }
  }
</script>          
                 <!-- /. ROW  -->
                 
 <?php
  if($_SESSION["role"]==1)
  {
  ?>               
  <h2>Add Subject</h2>   
 </div>
 </div>
                 <!-- /. ROW  -->
 <div class="row">
 <div class="col-md-12">
 <div class="panel panel-default">
                        
 <div class="panel-body">
 <div class="row">
 <div class="col-md-12">
 
<form method="post" onSubmit="return validate_form(this)">
     
            <div class="form-group">
                 <label>Subject Id:</label>
                 <input class="form-control" id="sid" name="sid" placeholder="Enter Subject Id..For Practical write [prac] after subject id e.x. C[prac]"/>
            </div>
            <div class="form-group">
                 <label>Subject Name:</label>
                 <input class="form-control" id="subnm" name="subnm" placeholder="Enter Subject Name" />
            </div>
            <div class="form-group">
                 <label>Course:</label>
                 <select class="form-control" id="cr" name="cr">
                    <option value="">Select Course</option>
                    <option value="1">MBA</option>
                    <option value="0">MSC</option>
                 </select>
            </div>
            <div class="form-group">
                 <label>Special</label>
                 <select class="form-control" id="sp" name="sp" >
                   <option value="">No</option>
                     <option value="1">Yes</option>
                     
                  </select>
            </div>
            <div class="form-group">
                 <label>Semester</label>
                 <select class="form-control" id="sem" name="sem" onchange="return getSpec(this.value)">
                    <option value="">Select Semester</option>
                        <?php
                        for($i=1;$i<=10;$i++)
                        {
                          ?>
                            <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
               <?php }?>
                </select>
            </div>
            <div class="form-group" id="add_spec">
            </div>
            <div class="form-group">
                <label>Type</label>
                <select class="form-control" id="type" name="type">
                    <option value="">Select Status</option>
                    <option value="1">Core</option>
                    <option value="2">Elective</option>
               </select>
           </div>
            
            <center>
                <button type="submit" id="sub_submit" name="sub_submit" value="Submit" class="btn btn-primary" >Submit</button>
           </center>
 </form>
 
 </center>
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



