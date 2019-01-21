<?php
    include './Database/Controler.php';
    include 'role.php';
    if($_SESSION["role"]==1)
  {
  ?>

<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
    <script language="javascript" type="text/javascript">
 function mf()
 {
        var nm1=prompt("Enter batch code of Roll numbers (f.g. For 2016 enter 216)");
        if(nm1)
        {
                   $("#code").val(nm1);
        }
}
function mf1()
{
    var nm1=prompt("Enter the Tear of which you want to delete the attendabce (f.g. 2018)");
    if(nm1)
    {
         $("#code").val(nm1);
     }
} 
 </script>    
</script>
<h2>Remove Fifth Year Data</h2>  
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
                    <input type="hidden" id="code" name="code" value="">
                    <center>
                    <button type="submit" id="fs_msc" name="fs_msc" class="btn btn-lg" onClick="mf()" style="width:60%;background-color:#000000;color: #cccc00;" >
                         <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Fifth Year Data - M.Sc.(CA& IT)&nbsp;<i class="fa fa-certificate"></i></b>
                    </button><br><br><br><br>
                                       
                   
                                        
                    <button type="submit" id="fs_mba" name="fs_mba" class="btn btn-lg" onClick="mf()" style="width:60%;background-color:#000000;color: #cccc00;" >
                        <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Fifth Year Data - MBA&nbsp;<i class="fa fa-certificate"></i></b>
                    </button><br><br>
                                        
                   
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