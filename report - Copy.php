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
                                        <div class="col-md-6">
                                            <button type="submit" id="dt_vise" name="dt_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                                <b style="font-size: larger"><i class="fa fa-calendar-o"></i>&nbsp; Date Vise</b>
                                            </button><br><br><br><br><br>
                                            
                                            <button type="submit" id="dtr_vise" name="sem_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                                <b style="font-size: larger"><i class="fa fa-bullseye"></i>&nbsp;Semester Vise</b>
                                        </button><br><br><br><br><br>
                                        
                                        <button type="submit" id="rn_vise" name="rn_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-smile-o"></i>&nbsp; Roll Number Vise</b>
                                        </button>
                                        <br><br></div>
                                        <div class="col-md-6">
                                        <button type="submit" id="div_vise" name="div_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-building-o"></i>&nbsp;Division Vise</b>
                                        </button><br><br><br><br><br>
                                        <button type="submit" id="sub_vise" name="sub_vise" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-book"></i>&nbsp;  Subject Vise</b>
                                        </button><br><br><br><br><br>
                                        <button type="submit" id="overall" name="overall" class="btn btn-lg" style="width:60%;background-color:#000000;color: #cccc00;" >
                                            <b style="font-size: larger"><i class="fa fa-certificate"></i>&nbsp;Overall Report</b>
                                        </button>
                                        </div>
                                        
                                        
                                    </form> </center>
<?php
    include 'footer.php';
?>