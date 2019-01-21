<?php
        include './Database/Controler.php';
        include 'role.php';
        $data=$_SESSION["vf"];
?>

<form method="post">
<button type="submit" id="back9" name="back9" class="btn btn-primary">Back</button>
</form><br><br>
<h3><center><i class="fa fa-user"></i><b>
<?php
         $cnt=0;
         foreach ($data as $d)
         {
                   echo $d->fac_name;
                   $cnt++;
                   if($cnt==1) break;
          }
?>
</b></center></h3><br><br>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<div class="row">
<div class="col-md-12">

<table class="table table-striped table-bordered table-hover" id="dataTables-example">
         <thead>
         <tr>
             <td><b>Faculty Code :</b></td>
             <td><?php
                             $cnt=0;
                             foreach ($data as $d)
                             {
                                      echo $d->fac_id;
                                      $cnt++;
                                      if($cnt==1) break;
                             }
                   ?></td>
         </tr>
         <tr>
             <td><b>Email :</b></td>
             <td><?php
                            $cnt=0;
                            foreach ($data as $d)
                            {
                                      echo $d->email;
                                      $cnt++;
                                      if($cnt==1) break;
                             }
                   ?></td>
         </tr>
         <tr>
             <td><b>Contact No :</b></td>
             <td><?php
                             $cnt=0;
                             foreach ($data as $d)
                             {
                                      echo $d->contact;
                                      $cnt++;
                                      if($cnt==1) break;
                             }
                   ?></td>
         </tr>
         <tr>
             <td><b>Role :</b></td>
             <td><?php
                             $cnt=0;
                             foreach ($data as $d)
                             {
                                      if($d->role==1)
                                                echo "Admin";
                                      else
                                                echo "Faculty";
                                      $cnt++;
                                      if($cnt==1) break;
                             }
                   ?></td>
         </tr>
         <tr>
             <td><b>Stream :</b></td>
             <td><?php
                             $cnt=0;
                             foreach ($data as $d)
                             {
                                      if($d->c_id==0)
                                                echo "MSc (CA & IT)";
                                      else if($d->c_id==1)
                                                echo "MBA";
                                      else
                                                echo "MBA & Msc (CA & IT)";
                                      $cnt++;
                                      if($cnt==1) break;
                             }
                   ?></td>
         </tr>
         <tr>
             <td><b>Assigned Subjects :</b></td>
             <td><?php
                             $cnt=0;
                             foreach($data as $d)
                             {
                                      $cnt++;
                                      echo $cnt.") ".$d->sub_name."<br>";
                             }
                   ?></td>
         </tr>
</thead>
<tbody>
</table>                                    
                                    


<?php
    include 'footer.php';
?>