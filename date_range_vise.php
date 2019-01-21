<?php
        include './Database/Controler.php';
        include 'role.php';  
?>  
<script src="https://code.jquery.com/jquery-1.12.4.js">  </script>
<script language="javascript" type="text/javascript">
        
function getYear(crs)
{
	var crs=crs;
                   if(crs)
                   {
                             $.ajax({
                                            type:"GET",
                                            url:"dropdown.php",
                                            data:"crs="+crs,
                                            success:function(result)
                                            {
                                                 $("#year").html(result);
                                             }
                                        });
                   }
}
function getSemester(yr)
{
	var yr=yr;
                   if(yr)
                   {
                             $.ajax({
                                                type: "GET",
                                                url:"dropdown.php",
                                                data:"yr="+yr,
                                                success:function(result)
                                                {
                                                         $("#semester").html(result);
                                                }
		});
                             $.ajax({
                                                type: "GET",
                                                url:"dropdown.php",
                                                data:"year="+yr,
                                                success:function(result)
                                                {
			$("#division").html(result);
                                                }
		});
                    }
     }
                        
</script>
<form method="post">
<button type="submit" id="back" name="back" class="btn btn-primary">Back</button>
</form>
            <h2>Select Details</h2>   
            </div>
            </div>
         <div class="row">
         <div class="col-md-12">
         <div class="panel panel-default">
         
         <div class="panel-body">
         <div class="table-responsive">
         <form method="post">
         <table class="table table-striped table-bordered table-hover" id="dataTables-example">
         <thead>
             <tr>
                <td>
                <b>Select Stream:<select class="form-control" id="c_id" name="c_id" onChange="return getYear(this.value)">
                <option value="">Select Stream</option>
                <?php if(isset($crs)){$cnt=0;foreach($crs as $c){$cnt++; ?>
                <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
                <?php if($cnt=='2'){break;}}}?>
                </select></b></td>
                
                <td><b>Select Year :<select id="year" class="form-control" name="year" onChange="return getSemester(this.value)">
                 </select></b></td>
             </tr>
             
             <tr>
             <td><b>Select Semester:<select class="form-control" id="semester" name="semester" onChange="return getSubject(this.value)">
             </select></b></td>
             <td>
                <b>Select Division:
                <select class="form-control" id="division" name="division">
                <option value="">Select Division</option> 
                </select>
             </td>
             </tr>
             </thead>
             <tr><td colspan="5"><center>
                   <button type="submit" id="sem_rep_submit" name="sem_rep_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Submit</button>
              </center> </td>
            </tr> 
            </table>
            </form>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>
<?php
    include 'footer.php';
?>