<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<h2>Report Generator</h2>  
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<center>
<form method="post" role="form" enctype="multipart/form-data">
<div class="col-md-6"><div class="row"><div class="panel-body">
<center>
<button type="submit" id="dtr_vise" name="sem_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;border: 8px double #cccc00;" >
    <b style="font-size: x-larger"><i class="fa fa-bullseye"></i><br>&nbsp;Semester Vise<br><br></b>
</button><br><br><br><br><br>
                                       
<button type="submit" id="sub_vise" name="sub_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;border: 8px double #cccc00;" >
    <b style="font-size: larger"><i class="fa fa-book"></i><br>&nbsp;Subject Vise<br><br></b>
</button>
</center></div></div></div>
 <div class="col-md-6"><div class="row"><div class="panel-body">
<center>                                    
<button type="submit" id="overall" name="overall" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;border: 8px double #cccc00;" >
    <b style="font-size: larger"><i class="fa fa-certificate"></i><br>&nbsp;Overall Report<br><br></b>
</button><br><br><br><br><br>
                                        
<button type="submit" id="per_vise" name="per_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;border: 8px double #cccc00;" >
    <b style="font-size: larger"><i class="fa fa-certificate"></i><br>&nbsp;Subject Vise<br>Percentage Vise Report</b>
</button>
</center></div></div></div>

<div class="col-md-12"><div class="row"><div class="panel-body">
<center>
<button type="submit" id="batch_vise" name="batch_vise" class="btn btn-lg" style="width:40%;background-color:#000000;color: #cccc00;border: 8px double #cccc00;" >
        <b style="font-size: larger"><i class="fa fa-certificate"></i><br>&nbsp;Batch Vise<br><br></b>
</button></form>
</center></div></div></div>

<?php
    include 'footer.php';
?>