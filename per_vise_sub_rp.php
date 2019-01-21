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
<script language="javascript" src="./assets/js/validation.js"></script>
<script language="javascript">


  function validate_form(f1)
  {
       if(isEmpty(f1.c_id.value,"the Stream"))
      {
        alert(errMsg);
        f1.c_id.focus();
        return (false);
      }
       if(isEmpty(f1.year.value,"the Year"))
      {
        alert(errMsg);
        f1.year.focus();
        return (false);
      }
      
       if(isEmpty(f1.semester.value,"the Semester"))
      {
        alert(errMsg);
        f1.semester.focus();
        return (false);
      }     
 }
  </script>
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
        <form method="post" onSubmit="return validate_form(this)">
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>       
                    <td>
                    <b>Select Stream:<select class="form-control" id="c_id" name="c_id" onChange="return getYear(this.value)">
                         <option value="">Select Stream</option>
                         <?php if(isset($crs)){$cnt=0;foreach($crs as $c){$cnt++; ?>
                         <option value="<?php echo $c->c_id; ?>"><?php echo $c->cname; ?></option>
                         <?php if($cnt=='2'){break;}}}?>
                         </select></b>
                    </td>
                    <td>
                    <b>Select Year :<select id="year" class="form-control" name="year" onChange="return getSemester(this.value)">
                                      </select></b></td>
                 </tr>
                 <tr>
                    <td colspan="2">
                    <center>
                       <b>Select Semester:<select class="form-control" id="semester" style="width:50%;"  name="semester" onChange="return getSubject(this.value)">
                       </select></b>
                    </center>
                    </td>
                 </tr>                       
             </thead>
             <tr><td colspan="5"><center>
                   <button type="submit" id="per_sub_rep_submit" name="per_sub_rep_submit" value="submit"  class="btn btn-primary"style="height: 100%; width: 30%;" >Generate Report</button>
                   </center></td>
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
             <!-- /. PAGE INNER  -->
            </div>
<?php
    include 'footer.php';
?>