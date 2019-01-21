<?php
        include './Database/Controler.php';
        include 'role.php';
        $d1=$_REQUEST["d1"];
        $data=  unserialize($d1);
        
?>
          
<form method="post">
<button type="submit" id="back6" name="back6" class="btn btn-primary">Back</button>
</form>

<h2><center>Details of <?php foreach ($data as $d) {
        echo $d->fnm." ".$d->lnm; }?></h2>   
</div>
</div>
<div class="row">
<div class="col-md-12">

<div class="panel panel-default">
<div class="panel-body">
<div class="table-responsive">

<table class="table table-striped table-bordered table-hover" id="dataTables-example">                
<thead>
        <tr>
            <td style="width:30%"><b>Enrollment Number</b></td>
            <td><?php foreach ($data as $d) {
                                    echo $d->s_enrl; }?></td>
        </tr>
        <tr>
            <td><b>Roll Number</b></td>
            <td><?php foreach ($data as $d) {
                                    echo $d->s_rn; }?></td></tr>
   
         <tr>
             <td><b>Gender</b></td>
             <td><?php foreach ($data as $d) {
                                    if($d->s_gen==1){
                                            echo "Female"; }
                                    else {
                                            echo "Male";
                                            }}?></td>
         </tr>
         <tr>
             <td><b>Email</b></td>
            <td><?php foreach ($data as $d) {
                            echo $d->email; }?></td>
         </tr>
        <tr>
            <td><b>Contact</b></td>
            <td><?php foreach ($data as $d) {
                echo $d->contact; }?></td>
        </tr>
        <tr>
            <td><b>Course</b></td>
            <td><?php foreach ($data as $d) {
                                if($d->c_id==0){
                                    echo "M.Sc.(CA & IT)"; }
                                else {
                                    echo "MBA";
                                    } }?></td>
        </tr>
    <?php 
    foreach($data as $d)
    {
        if($d->c_id==0 && $d->sem==6) {?>
        <tr>
            <td><b>Special Subject</b></td>
            <td><?php 
                    $where=array("usub_id"=>$d->usub_id);
                    $sr=$md->sel_where($con,"subject",$where);
                    foreach($sr as $s){
                        echo $s->sub_name; }?></td>
        </tr>
        <?php }
                   elseif($d->c_id==1 && $d->sem==9 || $d->sem==10){?>
        <tr>
            <td><b>Special Subject</b></td>
            <td><?php 
                    $where=array("usub_id"=>$d->usub_id);
                    $sr=$md->sel_where($con,"subject",$where);
                    foreach($sr as $s){
                        echo $s->sub_name; }?></td>
        </tr>
        <?php }}
   ?>
   <tr>
       <td><b>Semester</b></td>
        <td><?php foreach ($data as $d) {
            echo "Semester ".$d->sem; }?></td>
   </tr>
   <tr>
       <td><b>Division</b></td>
        <td><?php foreach ($data as $d) {
            echo strtoupper($d->division); }?></td>
   </tr>
</table>                
<?php
    include 'footer.php';
?>