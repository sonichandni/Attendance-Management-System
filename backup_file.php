<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">
function validate_form(f1)
  {
      if(isEmpty(f1.filenm.value,"the File Name.."))
      {
        alert(errMsg);
        f1.filenm.focus();
        return (false);
      }
  }
</script>
<h2>Backup Data</h2> 
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
                        
 <div class="panel-body">
 <div class="row">
 <div class="col-md-12">
    <form method="post" onSubmit="return validate_form(this)">
    
     <div class="form-group">
    <label>First Name:</label>
    <input class="form-control" id="filenm" name="filenm" placeholder="Enter File Name"/>
    </div><center>
    <button type="submit" id="backup_data" name="backup_data" class="btn btn-primary"style="width: 30%;">Backup</button>
    </center>
    </form>
<?php
    include 'footer.php';
?>