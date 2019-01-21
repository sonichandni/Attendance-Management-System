<?php
        include './Database/Controler.php';
        include 'role.php';
        $d1=$_REQUEST["d1"];
        $data=  unserialize($d1);
?>

<form method="post">
    <button type="submit" id="back6" name="back6" class="btn btn-primary">Back</button>
</form>              
               
  <h2>Student Update</h2>   
    </div>
    </div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<div class="col-md-12">
<form method="post" role="form" enctype="multipart/form-data">
<div class="form-group">
         <div class="form-group">
         
         <input type="hidden" class="form-control" id="s_enrl" name="s_enrl" value="<?php foreach ($data as $d)
                                                                                                                                     {
                                                                                                                                                echo $d->s_enrl;
                                                                                                                                        } ?>" />
         <input type="hidden" class="form-control" id="c_id" name="c_id" value="<?php foreach ($data as $d)
                                                                                                                                     {
                                                                                                                                                echo $d->c_id;
                                                                                                                                        } ?>" />
         <input type="hidden" class="form-control" id="osem" name="osem" value="<?php foreach ($data as $d)
                                                                                                                                     {
                                                                                                                                                echo $d->sem;
                                                                                                                                        } ?>" />
         <input type="hidden" class="form-control" id="div" name="div" value="<?php foreach ($data as $d)
                                                                                                                                     {
                                                                                                                                                echo $d->division;
                                                                                                                                        } ?>" />
         </div>
         <label>Name:</label>
         <input class="form-control" id="firstname" name="firstname" value="<?php foreach ($data as $d)
                                                                                                                         {
                                                                                                                                echo $d->fnm;
                                                                                                                          } ?>">
</div>

                                        
<div class="form-group">
          <label>Roll No. :</label>
          <input class="form-control" id="s_rn" name="s_rn" value="<?php foreach ($data as $d)
                                                                                                            {
                                                                                                                   echo $d->s_rn;
                                                                                                            } ?>">
</div>
<div class="form-group">
         <label>Email Id:</label>
         <input class="form-control" id="email" name="email" value="<?php foreach ($data as $d)
                                                                                                             {
                                                                                                                    echo $d->email;
                                                                                                              } ?>">
</div>
<div class="form-group">
         <label>Contact Number:</label>
         <input class="form-control" id="cn" name="cn" value="<?php foreach ($data as $d)
                                                                                                    {
                                                                                                            echo $d->contact;
                                                                                                    } ?>">
</div>
<div class="form-group">
          <label>Select Semester:</label>
          <select class="form-control" id="sem" name="sem" style="">
          <option value="1" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='1'){
                                                        echo "selected";}
                                                } ?>>Sem 1</option>
         <option value="2" <?php foreach ($data as $d)
                                               {
                                                    if($d->sem=='2'){
                                                        echo "selected";}
                                                } ?>>Sem 2</option>
         <option value="3" <?php foreach ($data as $d)
                                               {
                                                    if($d->sem=='3'){
                                                        echo "selected";}
                                                } ?>>Sem 3</option>
         <option value="4" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='4'){
                                                        echo "selected";}
                                                } ?>>Sem 4</option>
         <option value="5" <?php foreach ($data as $d)
                                               {
                                                    if($d->sem=='5'){
                                                        echo "selected";}
                                                } ?>>Sem 5</option>
          <option value="6" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='6'){
                                                        echo "selected";}
                                                } ?>>Sem 6</option>
          <option value="7" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='7'){
                                                        echo "selected";}
                                                } ?>>Sem 7</option>
         <option value="8" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='8'){
                                                        echo "selected";}
                                                } ?>>Sem 8</option>
          <option value="9" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='9'){
                                                        echo "selected";}
                                                } ?>>Sem 9</option>
         <option value="10" <?php foreach ($data as $d)
                                                {
                                                    if($d->sem=='10'){
                                                        echo "selected";}
                                                } ?>>Sem 10</option>
         </select>
</div>
<div class="form-group">
         <label>Select Division:</label>
         <select class="form-control" id="division" name="division" style="">
         <option value="a" <?php foreach ($data as $d)
                                               {
                                                    if($d->division=='a'){
                                                        echo "selected";}
                                                } ?>>Div A</option>
         <option value="b" <?php foreach ($data as $d)
                                               {
                                                    if($d->division=='b'){
                                                        echo "selected";}
                                                } ?>>Div B</option>
         <option value="c" <?php foreach ($data as $d)
                                               {
                                                    if($d->division=='c'){
                                                        echo "selected";}
                                                } ?>>Div C</option>
         </select>
</div>
<center>
          <button type="submit" id="stu_update" name="stu_update" value="Update" class="btn btn-primary" >Update</button>
</center>
</form>
</center>
<?php
    include 'footer.php';
?>

