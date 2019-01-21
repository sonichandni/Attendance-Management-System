<?php
    include_once './Database/Controler.php';
    include 'role.php';
?>
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
  function validate_form(f1)
  {
       if(isEmpty(f1.f.value,"the file"))
      {
        alert(errMsg);
        f1.f.focus();
        return (false);
      }
  }
  </script>
   <?php
  if($_SESSION["role"]==1)
  {
  ?>
<h2>Select Details</h2> 
<div class="row">
     <div class="col-md-12">
     
     <div class="panel panel-default">
     <div class="panel-body">
     <div class="table-responsive">
          <form method="post" onSubmit="return validate_form(this)">
                <input type="file" name="f" id="f">
                <br>
                <button type="submit" name="bulk" id="bulk" value="Submit" class="btn btn-primary" >Submit</button>    
         </form> 
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