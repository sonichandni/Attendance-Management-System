<?php
        include './Database/Controler.php';
        include 'role.php';
        $data=  unserialize($_REQUEST["up"]);
?>
<form method="post">
    <button type="submit" id="back3" name="back3" class="btn btn-primary">Back</button>
</form>              

<h2>Faculty Update</h2>   

</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
                        
<div class="panel-body">
<div class="row">
<div class="col-md-12">
    <form method="post" role="form" enctype="multipart/form-data">
    <?php foreach($data as $d) {?>
         <div class="form-group">
         <label>Faculty Id:</label>
         <input class="form-control" id="fid" name="fid" value="<?php echo $d->fac_id; ?>"/>
         </div>
         <div class="form-group">
         <label>Faculty Name:</label>
                   <input class="form-control" id="facnm" name="facnm" value="<?php echo $d->fac_name; ?>"/>
         </div>
         <div class="form-group">
         <label>Course:</label>
         <select class="form-control" id="cr" name="cr">
                <option value="">Select Stream</option>
                <?php if(isset($crs)){foreach($crs as $c){ ?>
                <option value="<?php echo $c->c_id; ?>" <?php if($c->c_id==$d->c_id) echo "selected"; ?>><?php echo $c->cname; ?></option>
                <?php }}?>
         </select>
         </div>
         
        <input type="hidden" id="ufcid" name="ufcid" value="<?php echo $d->ufac_id; ?>">
        <div class="form-group">
            <label>Email:</label>
            <input class="form-control" id="email" name="email" value="<?php echo $d->email; ?>"/>
        </div>
        
        <div class="form-group">
            <label>Password:</label>
            <input class="form-control" id="pwd" name="pwd" value="<?php echo $d->password; ?>"/>
        </div>
                                      
        <div class="form-group">
              <label>Role:</label>
              <select class="form-control" id="role" name="role">
                    <option>Select Role</option>
                    <option value="1" <?php if($d->role=="1") echo "selected"; ?>>Admin</option>
                    <option value="2" <?php if($d->role=="2") echo "selected"; ?>>Faculty</option>
              </select>
        </div>
        <?php }?>    
        <center>
        <button type="submit" id="fac_update" name="fac_update" value="Update" class="btn btn-primary" >Update</button>
        </center>
        </form>
   
</center>
<?php
    include 'footer.php';
?>

