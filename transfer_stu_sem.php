<?php
    include './Database/Controler.php';
    include 'role.php';
    if($_SESSION["role"]==1)
    {
  ?>
<h2>Semester Vise Transformation of Student</h2>  
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<center>
<form method="post" role="form" enctype="multipart/form-data">
<div class="col-md-12">
<div class="row">
<div class="panel-body">
<center>
          <button type="submit" id="fs_to_ss" name="fs_to_ss" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                   <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;First Semster to Second Semster&nbsp;<i class="fa fa-certificate"></i></b>
          </button><br><br>
                                       
          <button type="submit" id="ts_to_fs" name="ts_to_fs" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                   <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Third Semster to Fourth Semster&nbsp;<i class="fa fa-certificate"></i></b>
         </button><br><br>
                                        
         <button type="submit" id="fis_to_ss" name="fis_to_ss" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                   <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Fifth Semster to Sixth Semster&nbsp;<i class="fa fa-certificate"></i></b>
         </button><br><br>
                                        
         <button type="submit" id="ss_to_es" name="ss_to_es" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                   <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Seventh Semster to Eighth Semster&nbsp;<i class="fa fa-certificate"></i></b>
         </button><br><br>
                                       
         <button type="submit" id="ns_to_ts" name="ns_to_ts" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                   <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Ninth Semster to Tenth Semster&nbsp;<i class="fa fa-certificate"></i></b>
         </button><br>
</form> </center>
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