<?php
    include './Database/Controler.php';
    include 'role.php';
?>
<script language="javascript" type="text/javascript">
        
        function getRn_res(rn)
        {
				var rn=rn;
                                                                             //alert(crs);
                                                                             if(rn)
                                                                             {
                                                                                //alert(rn);
                                                                                 $.ajax({
                                                                                     type:"GET",
                                                                                     url:"dropdown.php",
                                                                                     data:"rn="+rn,
                                                                                     success:function(result)
                                                                                     {
                                                                                         $("#rn_r").html(result);
                                                                                     }
                                                                                 });
                                                                             }
				
                                
				
        }
</script>
<form method="post">
<button type="submit" id="back1" name="back1" class="btn btn-primary">Back</button>
</form>
<h2>Roll Number Vise Report</h2>  
</div>
</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <?php 
                                       $dr=$_SESSION["roll_list_rep"];
                                     ?>
                                    <b>Select Roll Number:
                                     <select class="form-control" id="rn" name="rn" style="width:50%;" onChange="return getRn_res(this.value)">
                                         <option>Select Roll Number</option>
                                         <?php 
                                         
                                         foreach($dr as $d)
                                         {?>
                                         <option value="<?php echo $d->s_enrl; ?>">
                                        <?php echo $d->s_rn."-".$d->fnm." ".$d->lnm; ?></option>
                                         <?php }?>
                                     </select>
                                    </b><br>
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    
                                    <tbody id="rn_r" name="rn_r">
                                    
                                    </tbody>
                                    </thead>
                                    </table>

<?php
    include 'footer.php';
?>