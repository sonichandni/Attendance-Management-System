<?php
    include './Database/Controler.php';
    include 'role.php';
    if($_SESSION["role"]==1)
  {
  ?>

<h2>Year Vise Transformation of Student</h2>  
</div>
</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <center>
                                    <h3>*Please start transfering students from forth year then third year and so on...</h3>
                                    <form method="post" role="form" enctype="multipart/form-data">
                                        <div class="col-md-12"><div class="row"><div class="panel-body">
                                         
                                        <center>
                                            <button type="submit" id="f_to_f" name="f_to_f" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Fourth Year to Fifth Year&nbsp;<i class="fa fa-certificate"></i></b>
                                        </button><br><br>
                                        
                                        <button type="submit" id="t_to_f_msc" name="t_to_f_msc" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Third Year to Fourth Year(M.Sc. IT)&nbsp;<i class="fa fa-certificate"></i></b>
                                        </button><br><br>
                                        
                                        <button type="submit" id="t_to_f_mba" name="t_to_f_mba" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Third Year to Fourth Year(MBA)&nbsp;<i class="fa fa-certificate"></i></b>
                                        </button><br><br>
                                        
                                        <button type="submit" id="s_to_t" name="s_to_t" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Second Year to Third Year&nbsp;<i class="fa fa-certificate"></i></b>
                                        </button><br><br>
                                        
                                        <button type="submit" id="f_to_s" name="f_to_s" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                                <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;First Year to Second Year&nbsp;<i class="fa fa-certificate"></i></b>
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