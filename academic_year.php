<?php
        include './Database/Controler.php';
        include 'role.php';
?>
  <script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
    function validate_form(f1)
  {
       if(isEmpty(f1.a_yr.value,"Academic year"))
      {
        alert(errMsg);
        f1.a_yr.focus();
        return (false);
      }
  }
  </script>
  <?php
  if($_SESSION["role"]==1)
  {
  ?>
  <h2>Academic Year</h2>   
                        
                       
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
         <label>Academic Year:</label>
         <input class="form-control" id="a_yr" name="a_yr" placeholder="Enter year eg.(2018-19)"/>
         </div>
         
         <center>
         <button type="submit" id="submit" name="Academic_yr" value="Submit" class="btn btn-primary">Submit</button>
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

