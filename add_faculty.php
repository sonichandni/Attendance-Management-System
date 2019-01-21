<?php
        include './Database/Controler.php';
        include 'header_admin.php';
?>
          
                 <!-- /. ROW  -->
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
function validate_form(f1)
  {
      if(isEmpty(f1.fid.value,"the Faculty Id.."))
      {
        alert(errMsg);
        f1.fid.focus();
        return (false);
      }
      if(isEmpty(f1.facnm.value,"the Faculty Name.."))
      {
        alert(errMsg);
        f1.facnm.focus();
        return (false);
      }
      if(isEmpty(f1.cr.value,"the Course Name.."))
      {
        alert(errMsg);
        f1.cr.focus();
        return (false);
      }
      if(isEmpty(f1.email.value,"the Email Id.."))
      {
        alert(errMsg);
        f1.email.focus();
        return (false);
      }
      if(isEmpty(f1.pwd.value,"the Password.."))
      {
        alert(errMsg);
        f1.pwd.focus();
        return (false);
      }
      if(isEmpty(f1.role.value,"the Role.."))
      {
        alert(errMsg);
        f1.role.focus();
        return (false);
      }
  }
  function validateEmail(email)
  {
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (!email.match(email.value)) 
        {
            alert('Invalid Email Address');
            return false;
        }

        return true;

}
</script>                 
<?php
  if($_SESSION["role"]==1)
  {
  ?>               
  <h2>Faculty Registration</h2>   
                        
                       
</div>
</div>
<!-- /. ROW  -->
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
                        
<div class="panel-body">
<div class="row">
<div class="col-md-12">
<form method="post" role="form" enctype="multipart/form-data" onSubmit="return validate_form(this)">
                                    
    <div class="form-group">
        <label>Faculty Id:</label>
        <input class="form-control" id="fid" name="fid" placeholder="Enter First Name"/>
    </div>
    <div class="form-group">
        <label>Faculty Name:</label>
        <input class="form-control" id="facnm" name="facnm" placeholder="Enter Faculty Name" />
    </div>
    <div class="form-group">
        <label>Course:</label>
        <select class="form-control" id="cr" name="cr">
            <option value="">Select Course</option>
            <option value="1">MBA</option>
            <option value="0">MSC</option>
            <option value="2">MBA & MSC</option>
        </select>
    </div>
    <div class="form-group">
        <label>Email:</label>
        <input type="text" class="form-control" id="email" name="email" onblur="validateEmail(this.value);" placeholder="Enter Email"/>
   </div>
   <div class="form-group">
        <label>Password:</label>
        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter Password"/>
   </div>
                                       <!-- <div class="form-group">
                                            <label>Confirm Password:</label>
                                            <input class="form-control" id="s_rn" name="s_rn" placeholder="Enter Roll Number"/>
                                        </div> -->   
                                           
   <div class="form-group">
        <label>Role:</label>
        <select class="form-control" id="role" name="role">
            <option value="">Select Role</option>
            <option value="1">Admin</option>
            <option value="2">Faculty</option>
        </select>
  </div>
  <center>
         <button type="submit" id="submit" name="fac_submit" value="Register" class="btn btn-primary" >Register</button>
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



